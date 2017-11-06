.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetSpeedActivity.java"


# static fields
.field public static final ITEM_SPEED_SELECT_VALUE:I = 0x2

.field public static final ITEM_SPEED_WARN:I = 0x0

.field public static final ITEM_SPEED_WARN_VALUE:I = 0x1


# instance fields
.field private mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

.field private mItemValue:Lcom/ts/canview/CanItemTitleValList;

.field private mItemWarn:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;)Lcom/ts/canview/CanItemTitleValList;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    return-object v0
.end method

.method private setSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 65
    if-ltz p1, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " KM/H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 23
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_warn:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemWarn:Lcom/ts/canview/CanItemSwitchList;

    .line 24
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_warn_value:I

    .line 25
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    .line 26
    sget v0, Lcom/ts/MainUI/R$string;->can_speed_select_value:I

    .line 27
    const/4 v1, 0x2

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

    .line 29
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetValVisibility(I)V

    .line 31
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->Query(I)V

    .line 60
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->Sleep(J)V

    .line 61
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->Query(I)V

    .line 62
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->GetMiniSetData()V

    .line 37
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 41
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgSpeedWarn:I

    .line 43
    .local v0, "warn":I
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemWarn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 45
    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTitleValList;->setEnabled(Z)V

    .line 47
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v3}, Lcom/ts/canview/CanItemTitleValList;->setEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->SpeedWarnVal:I

    invoke-direct {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->setSpeed(I)V

    .line 55
    .end local v0    # "warn":I
    :cond_1
    :goto_0
    return-void

    .line 50
    .restart local v0    # "warn":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTitleValList;->setEnabled(Z)V

    .line 51
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemSelectVal:Lcom/ts/canview/CanItemTitleValList;

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTitleValList;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const/16 v1, 0x82

    .line 79
    .local v1, "param":I
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgSpeedWarn:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 80
    add-int/lit8 v1, v1, -0x80

    .line 82
    :cond_0
    const/16 v2, 0x41

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->CarSet(II)V

    goto :goto_0

    .line 86
    .end local v1    # "param":I
    :pswitch_1
    new-instance v2, Lcom/ts/canview/CanNumInuptDlg;

    new-instance v3, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;)V

    .line 98
    const/4 v4, 0x3

    .line 86
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    goto :goto_0

    .line 102
    :pswitch_2
    const/16 v2, 0x43

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->CarSet(II)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
