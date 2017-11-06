.class public Lcom/ts/can/CanHondaCompassActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaCompassActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ID_STATUS:I = 0x1

.field public static final ID_ZONE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanHondaCompassActivity"


# instance fields
.field private mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

.field private mItemAngle:Lcom/ts/canview/CanItemTitleValList;

.field private mItemStatus:Lcom/ts/canview/CanItemTitleValList;

.field private mItemZone:Lcom/ts/canview/CanItemProgressList;

.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    .line 18
    return-void
.end method


# virtual methods
.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaGetCompass(Lcom/lgb/canmodule/CanDataInfo$HondaCompass;)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondaCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanHondaCompassActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Update:I

    .line 64
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemZone:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Zone:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemAngle:Lcom/ts/canview/CanItemTitleValList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Angle:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Status:I

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fjz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zzjz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(I)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaCompassActivity;->ResetData(Z)V

    .line 153
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 103
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaOldCompassCtrl(II)V

    .line 107
    invoke-static {v1, v1}, Lcom/lgb/canmodule/CanJni;->HondaOldCompassCtrl(II)V

    goto :goto_0

    .line 111
    :pswitch_1
    const/16 v0, 0xc1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    .line 112
    const/16 v0, 0xc0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    .local v0, "id":I
    if-ne v0, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/ts/can/CanHondaCompassActivity;->mCompassData:Lcom/lgb/canmodule/CanDataInfo$HondaCompass;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaCompass;->Status:I

    if-nez v1, :cond_0

    .line 131
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->HondaOldCompassCtrl(II)V

    goto :goto_0

    .line 138
    :pswitch_1
    const/16 v1, 0xc0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaCompassActivity;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 42
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_status:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    .line 43
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    sget v1, Lcom/ts/MainUI/R$string;->can_angle:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemAngle:Lcom/ts/canview/CanItemTitleValList;

    .line 44
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zone:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemZone:Lcom/ts/canview/CanItemProgressList;

    .line 45
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemZone:Lcom/ts/canview/CanItemProgressList;

    const/16 v1, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 46
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemZone:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 48
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemAngle:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemZone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/CanHondaCompassActivity;->mItemStatus:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 93
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaCompassActivity;->ResetData(Z)V

    .line 95
    return-void
.end method
