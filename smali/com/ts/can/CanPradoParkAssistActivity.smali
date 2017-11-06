.class public Lcom/ts/can/CanPradoParkAssistActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanPradoParkAssistActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_REAR:I = 0x2

.field public static final ITEM_SHOW:I = 0x1

.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanPradoParkAssistActivity"


# instance fields
.field protected mBtnRear:Lcom/ts/other/ParamButton;

.field protected mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

.field protected mImgCar:Lcom/ts/other/CustomImgView;

.field protected mItemDistance:Lcom/ts/canview/CanItemBlankTextList;

.field protected mItemShow:Lcom/ts/canview/CanItemCheckList;

.field protected mItemVol:Lcom/ts/canview/CanItemProgressList;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    .line 23
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetCtrlInfo(Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanPradoParkAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanPradoParkAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->Update:I

    .line 139
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->FAVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemShow:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->fgFA:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 144
    :cond_1
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanPradoParkAssistActivity;->ResetData(Z)V

    .line 177
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 185
    if-lez p2, :cond_0

    .line 187
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanPradoParkAssistActivity;->CarSet(II)V

    .line 191
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->fgFA:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanPradoParkAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanPradoParkAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 162
    :pswitch_1
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->fgRearRadarFar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanPradoParkAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanPradoParkAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x55

    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanPradoParkAssistActivity;->setContentView(I)V

    .line 54
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 56
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    const-string v1, "Park Assist"

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    .line 57
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, v2, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemVol:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 61
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    sget v1, Lcom/ts/MainUI/R$string;->can_display:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemShow:Lcom/ts/canview/CanItemCheckList;

    .line 62
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemShow:Lcom/ts/canview/CanItemCheckList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemShow:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x5f

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 66
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    sget v1, Lcom/ts/MainUI/R$string;->can_distance:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemDistance:Lcom/ts/canview/CanItemBlankTextList;

    .line 67
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mItemDistance:Lcom/ts/canview/CanItemBlankTextList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xb4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x241

    const/16 v2, 0xc5

    const/16 v3, 0xa0

    const/16 v4, 0x15e

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    .line 71
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    const/16 v1, -0x241

    const/16 v2, -0xc5

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setDrawDt(II)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mImgCar:Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/can/CanPradoParkAssistActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/can/CanPradoParkAssistActivity$1;-><init>(Lcom/ts/can/CanPradoParkAssistActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x319

    const/16 v2, 0x1ce

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 103
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_rear:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanPradoParkAssistActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 124
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    const/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->ToyotaQuery(II)V

    .line 116
    invoke-direct {p0, v1}, Lcom/ts/can/CanPradoParkAssistActivity;->ResetData(Z)V

    .line 117
    return-void
.end method
