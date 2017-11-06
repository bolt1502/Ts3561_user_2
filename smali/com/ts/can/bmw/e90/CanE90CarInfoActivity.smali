.class public Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanE90CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_DRIVE_INFO:I = 0x1

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_OTHER:I = 0x3

.field public static final ITEM_UNITS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanE90CarInfoActivity"


# instance fields
.field protected mItemDriveInfo:Lcom/ts/canview/CanItemIcoList;

.field protected mItemOther:Lcom/ts/canview/CanItemIcoList;

.field protected mItemUnits:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 152
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 153
    iget-object v1, p0, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 155
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 108
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_wm:I

    sget v1, Lcom/ts/MainUI/R$string;->can_driving_data:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->mItemDriveInfo:Lcom/ts/canview/CanItemIcoList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_units:I

    sget v1, Lcom/ts/MainUI/R$string;->can_units:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->mItemUnits:Lcom/ts/canview/CanItemIcoList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_other_set:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    .line 111
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 132
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 121
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->ShowItem(I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 75
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 147
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->ResetData(Z)V

    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 166
    :pswitch_0
    const-class v1, Lcom/ts/can/bmw/e90/CanE90DriveInfoActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 170
    :pswitch_1
    const-class v1, Lcom/ts/can/bmw/e90/CanE90SetUnitsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 174
    :pswitch_2
    const-class v1, Lcom/ts/can/bmw/e90/CanE90SetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->InitUI()V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 101
    const-string v0, "CanE90CarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->ResetData(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/ts/can/bmw/e90/CanE90CarInfoActivity;->QueryData()V

    .line 90
    const-string v0, "CanE90CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
