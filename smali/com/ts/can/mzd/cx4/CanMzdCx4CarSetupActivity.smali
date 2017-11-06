.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarSetupActivity.java"


# static fields
.field private static final ITEM_DOOR:I = 0x0

.field private static final ITEM_DRIVE:I = 0x3

.field private static final ITEM_LIGHT:I = 0x2

.field private static final ITEM_OTHER:I = 0x4

.field private static final ITEM_TURN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 38
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 39
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    .line 41
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 19
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 20
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_turn:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 21
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 22
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 23
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_other:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;

    .line 24
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 29
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 53
    :pswitch_1
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 56
    :pswitch_2
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 62
    :pswitch_4
    const-class v1, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarSetupActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
