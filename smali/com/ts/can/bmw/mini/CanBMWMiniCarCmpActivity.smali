.class public Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniCarCmpActivity.java"


# static fields
.field private static final ITEM_CONSUMPTION:I = 0x1

.field private static final ITEM_DISTANCE:I = 0x0

.field private static final ITEM_SPEED:I = 0x2


# instance fields
.field private mItemConsumption:Lcom/ts/canview/CanItemIcoVal;

.field private mItemDistance:Lcom/ts/canview/CanItemIcoVal;

.field private mItemSpeed:Lcom/ts/canview/CanItemIcoVal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    return-void
.end method

.method private setConsumption(I)V
    .locals 6
    .param p1, "consumption"    # I

    .prologue
    .line 70
    const-string v0, ""

    .line 71
    .local v0, "str":Ljava/lang/String;
    const v1, 0xffff

    if-ne p1, v1, :cond_0

    .line 72
    const-string v0, "--.-"

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemConsumption:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 77
    return-void

    .line 74
    :cond_0
    const-string v1, "%.1f L/100KM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setDistance(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    .line 65
    const-string v1, "%d KM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private setSpeed(I)V
    .locals 6
    .param p1, "speed"    # I

    .prologue
    .line 80
    const-string v0, ""

    .line 81
    .local v0, "str":Ljava/lang/String;
    const v1, 0xffff

    if-ne p1, v1, :cond_0

    .line 82
    const-string v0, "--.-"

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoVal;->SetVal(Ljava/lang/String;)V

    .line 87
    return-void

    .line 84
    :cond_0
    const-string v1, "%.1f KM/H"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showResetNotice(I)V
    .locals 3
    .param p1, "param"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/ts/canview/CanItemMsgBox;

    sget v1, Lcom/ts/MainUI/R$string;->can_cmp_reset_notice:I

    new-instance v2, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity$1;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;)V

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected AddItemView()V
    .locals 3

    .prologue
    .line 22
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_kdlc:I

    .line 23
    sget v1, Lcom/ts/MainUI/R$string;->can_kd_range:I

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->AddItemIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoVal;

    .line 24
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_consumption:I

    .line 25
    sget v1, Lcom/ts/MainUI/R$string;->can_consumption1:I

    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->AddItemIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemConsumption:Lcom/ts/canview/CanItemIcoVal;

    .line 26
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_sudu:I

    .line 27
    sget v1, Lcom/ts/MainUI/R$string;->can_avg_speed:I

    const/4 v2, 0x2

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->AddItemIcoVal(III)Lcom/ts/canview/CanItemIcoVal;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    .line 28
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->Query(I)V

    .line 60
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->Sleep(J)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->Query(I)V

    .line 62
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->GetMiniCarPC()V

    .line 34
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->GetMiniSetData()V

    .line 36
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 40
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemDistance:Lcom/ts/canview/CanItemIcoVal;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRange:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(I)V

    .line 41
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemConsumption:Lcom/ts/canview/CanItemIcoVal;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgConsumption:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(I)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mItemSpeed:Lcom/ts/canview/CanItemIcoVal;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgSpeed:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoVal;->ShowGone(I)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->Update:I

    .line 50
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->Range:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->setDistance(I)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->Consumption:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->setConsumption(I)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->mCarPC:Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarPC;->AvgSpeed:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->setSpeed(I)V

    .line 55
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->showResetNotice(I)V

    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniCarCmpActivity;->showResetNotice(I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
