.class public Lcom/ts/can/CanGolfSetFactoryActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfSetFactoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_ALL_SET:I = 0xc

.field public static final ITEM_DRIVE_ASS:I = 0x3

.field public static final ITEM_LIGHT:I = 0x5

.field public static final ITEM_MFD:I = 0x8

.field public static final ITEM_MW:I = 0x6

.field public static final ITEM_OC:I = 0x7

.field public static final ITEM_PM:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "CanGolfSetFactoryActivity"


# instance fields
.field protected mCurItem:Landroid/view/View;

.field protected mItemAllSetup:Lcom/ts/canview/CanItemIcoList;

.field protected mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

.field protected mItemLight:Lcom/ts/canview/CanItemIcoList;

.field protected mItemMFD:Lcom/ts/canview/CanItemIcoList;

.field protected mItemMW:Lcom/ts/canview/CanItemIcoList;

.field protected mItemOC:Lcom/ts/canview/CanItemIcoList;

.field protected mItemPM:Lcom/ts/canview/CanItemIcoList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "Id":I
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    sget v2, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v0, p0, v2, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 95
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 96
    iput-object p1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mCurItem:Landroid/view/View;

    .line 97
    invoke-virtual {v1}, Lcom/ts/canview/CanItemMsgBox;->getDlg()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/ts/can/CanGolfSetFactoryActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/CanGolfSetFactoryActivity$1;-><init>(Lcom/ts/can/CanGolfSetFactoryActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    packed-switch v0, :pswitch_data_0

    .line 135
    :pswitch_0
    return-void

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfSetFactoryActivity;->setContentView(I)V

    .line 47
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon14:I

    sget v3, Lcom/ts/MainUI/R$string;->can_all_settings:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemAllSetup:Lcom/ts/canview/CanItemIcoList;

    .line 48
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon02:I

    sget v3, Lcom/ts/MainUI/R$string;->can_drivet_assist:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    .line 49
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon04:I

    sget v3, Lcom/ts/MainUI/R$string;->can_park_and_m:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    .line 50
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon05:I

    sget v3, Lcom/ts/MainUI/R$string;->can_light:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 51
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon06:I

    sget v3, Lcom/ts/MainUI/R$string;->can_mirr_and_wiper:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    .line 52
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon07:I

    sget v3, Lcom/ts/MainUI/R$string;->can_open_and_close:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    .line 53
    new-instance v1, Lcom/ts/canview/CanItemIcoList;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_icon08:I

    sget v3, Lcom/ts/MainUI/R$string;->can_mfd:I

    invoke-direct {v1, p0, v2, v3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    .line 55
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemAllSetup:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0xc

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 56
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 57
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 58
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 59
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 60
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 61
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 64
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 65
    .local v0, "sl":Lcom/ts/canview/CanScrollList;
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemAllSetup:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 66
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemDriveAss:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemPM:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMW:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemOC:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanGolfSetFactoryActivity;->mItemMFD:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    const/4 v1, 0x1

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    const/16 v0, 0xc7

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 148
    :pswitch_2
    const/16 v0, 0xc1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 152
    :pswitch_3
    const/16 v0, 0xc2

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 156
    :pswitch_4
    const/16 v0, 0xc3

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 160
    :pswitch_5
    const/16 v0, 0xc4

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 164
    :pswitch_6
    const/16 v0, 0xc5

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 168
    :pswitch_7
    const/16 v0, 0xc6

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 87
    return-void
.end method
