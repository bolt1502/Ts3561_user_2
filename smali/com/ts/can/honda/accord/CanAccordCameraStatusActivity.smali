.class public Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;
.super Lcom/ts/can/honda/accord/CanAccordBaseActivity;
.source "CanAccordCameraStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_MODE_BZ:I = 0x2

.field public static final ITEM_MODE_FJ:I = 0x3

.field public static final ITEM_MODE_GJ:I = 0x1


# instance fields
.field protected mBtnBz:Lcom/ts/other/ParamButton;

.field protected mBtnFj:Lcom/ts/other/ParamButton;

.field protected mBtnGj:Lcom/ts/other/ParamButton;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    .line 15
    return-void
.end method

.method private ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->AccordGetCamMode(Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Update:I

    .line 80
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 81
    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    iget-object v3, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mModeData:Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$AccordCamMode;->Mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 85
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 80
    goto :goto_0

    :cond_3
    move v0, v2

    .line 81
    goto :goto_1

    :cond_4
    move v1, v2

    .line 82
    goto :goto_2
.end method


# virtual methods
.method protected Query()V
    .locals 2

    .prologue
    .line 88
    const/16 v0, 0xd2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->Query(II)V

    .line 89
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->ResetData(Z)V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x40

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 111
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->AccordCarCtrl(II)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xa0

    .line 32
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->setContentView(I)V

    .line 35
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 37
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    .line 38
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_gj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_mode_gj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 40
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnGj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x183

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    .line 43
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_bz_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_mode_bz_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnBz:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2c1

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    .line 48
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_mode_fj_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_mode_fj_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 50
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->mBtnFj:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 68
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onPause()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onResume()V

    .line 59
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->ResetData(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordCameraStatusActivity;->Query()V

    .line 62
    return-void
.end method
