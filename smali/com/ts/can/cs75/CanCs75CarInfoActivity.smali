.class public Lcom/ts/can/cs75/CanCs75CarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCs75CarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# instance fields
.field private mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mOilMark:Landroid/widget/TextView;

.field private mTripRest:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CS75Data;-><init>()V

    iput-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    .line 16
    return-void
.end method

.method private addIcon(IIIII)Landroid/widget/ImageView;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "resId"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    move-result-object v6

    .line 55
    .local v6, "icon":Landroid/widget/ImageView;
    return-object v6
.end method

.method private addText(IILjava/lang/String;)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "textId"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v0

    .line 47
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    return-object v0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/16 v6, 0x15e

    .line 33
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 35
    const/16 v1, 0x1a4

    const/16 v2, 0x32

    const/16 v3, 0x7c

    const/16 v4, 0xeb

    sget v5, Lcom/ts/MainUI/R$drawable;->can_door_car:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->addIcon(IIIII)Landroid/widget/ImageView;

    .line 37
    const/16 v0, 0x12c

    const-string v1, "\u5269\u4f59\u4fdd\u517b\u91cc\u7a0b\uff1a"

    invoke-direct {p0, v6, v0, v1}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->addText(IILjava/lang/String;)Landroid/widget/TextView;

    .line 39
    const/16 v0, 0x190

    const-string v1, "0 KM"

    invoke-direct {p0, v0, v6, v1}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->addText(IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mTripRest:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mTripRest:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    const/16 v0, 0x1ae

    const-string v1, ""

    invoke-direct {p0, v6, v0, v1}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->addText(IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mOilMark:Landroid/widget/TextView;

    .line 43
    return-void
.end method


# virtual methods
.method protected ResetData(Z)V
    .locals 5
    .param p1, "check"    # Z

    .prologue
    .line 73
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->Cs75GetData(Lcom/lgb/canmodule/CanDataInfo$CS75Data;)V

    .line 75
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CS75Data;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CS75Data;->Update:I

    invoke-static {v2}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    const/4 v3, 0x0

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$CS75Data;->Update:I

    .line 81
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    iget v1, v2, Lcom/lgb/canmodule/CanDataInfo$CS75Data;->Range:I

    .line 83
    .local v1, "range":I
    if-ltz v1, :cond_1

    const/16 v2, 0x1fff

    if-gt v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mTripRest:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " KM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$CS75Data;

    iget v0, v2, Lcom/lgb/canmodule/CanDataInfo$CS75Data;->fgFuelLow:I

    .line 88
    .local v0, "oilMark":I
    if-nez v0, :cond_3

    .line 89
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mOilMark:Landroid/widget/TextView;

    const-string v3, "\u6cb9\u91cf\uff1a\u6b63\u5e38"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v0    # "oilMark":I
    .end local v1    # "range":I
    :cond_2
    :goto_0
    return-void

    .line 91
    .restart local v0    # "oilMark":I
    .restart local v1    # "range":I
    :cond_3
    iget-object v2, p0, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->mOilMark:Landroid/widget/TextView;

    const-string v3, "\u6cb9\u91cf\uff1a\u4f4e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->ResetData(Z)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->initViews()V

    .line 30
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 68
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 61
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/cs75/CanCs75CarInfoActivity;->ResetData(Z)V

    .line 63
    return-void
.end method
