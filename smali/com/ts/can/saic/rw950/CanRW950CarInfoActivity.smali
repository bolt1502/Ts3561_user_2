.class public Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;
.super Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.source "CanRW950CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_AC:I = 0x6

.field public static final ITEM_DOOR_LOCK:I = 0x4

.field public static final ITEM_FS_SET:I = 0x7

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_RMT_LOCK:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanRW950CarInfoActivity"


# instance fields
.field private mItemAc:Lcom/ts/canview/CanItemIcoList;

.field private mItemDoorLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemFsSet:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemRmtLock:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 78
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 80
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 86
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_c4_l_light:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 87
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock3:I

    sget v1, Lcom/ts/MainUI/R$string;->can_lock_center:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mItemDoorLock:Lcom/ts/canview/CanItemIcoList;

    .line 88
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v1, Lcom/ts/MainUI/R$string;->can_lock_remote:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mItemRmtLock:Lcom/ts/canview/CanItemIcoList;

    .line 89
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_set:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    .line 90
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_factory:I

    sget v1, Lcom/ts/MainUI/R$string;->can_factory_set:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->mItemFsSet:Lcom/ts/canview/CanItemIcoList;

    .line 92
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->ResetData(Z)V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-class v2, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-class v2, Lcom/ts/can/saic/rw950/CanRW950DoorLockActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const-class v2, Lcom/ts/can/saic/rw950/CanRW950RmtLockActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 117
    :pswitch_3
    const-class v2, Lcom/ts/can/saic/rw950/CanRW950ACSetActivity;

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 121
    :pswitch_4
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x7

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 122
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 102
    nop

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
    .line 40
    invoke-super {p0, p1}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->InitUI()V

    .line 44
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 141
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 143
    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->CarSet(II)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 72
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onResume()V

    .line 60
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->ResetData(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950CarInfoActivity;->QueryData()V

    .line 63
    const-string v0, "CanRW950CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
