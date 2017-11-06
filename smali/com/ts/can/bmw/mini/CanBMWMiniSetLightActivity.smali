.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetLightActivity.java"


# static fields
.field public static final ITEM_DAY_LIGHT:I = 0x1

.field public static final ITEM_HOME_LIGHT:I = 0x3

.field public static final ITEM_STEERING_LIGHT:I = 0x0

.field public static final ITEM_YB_LIGHT:I = 0x2


# instance fields
.field private mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;

.field private mItemSteeringLight:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYbLight:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;)Lcom/ts/canview/CanItemTitleValList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;

    return-object v0
.end method

.method private getCarSetParam()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "param":I
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgZxd:I

    if-ne v1, v2, :cond_0

    .line 117
    add-int/lit16 v0, v0, 0x80

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRxd:I

    if-ne v1, v2, :cond_1

    .line 120
    add-int/lit8 v0, v0, 0x40

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgYbd:I

    if-ne v1, v2, :cond_2

    .line 123
    add-int/lit8 v0, v0, 0x20

    .line 126
    :cond_2
    return v0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/ts/MainUI/R$string;->can_steering_light:I

    .line 26
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemSteeringLight:Lcom/ts/canview/CanItemSwitchList;

    .line 27
    sget v0, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    .line 28
    sget v0, Lcom/ts/MainUI/R$string;->can_yb_light:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemYbLight:Lcom/ts/canview/CanItemSwitchList;

    .line 29
    sget v0, Lcom/ts/MainUI/R$string;->can_light_time:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->AddItemTitleVal(II)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;

    .line 30
    return-void
.end method

.method protected Query()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x1

    .line 59
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Query(I)V

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Sleep(J)V

    .line 61
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Query(I)V

    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Sleep(J)V

    .line 63
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Query(I)V

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Sleep(J)V

    .line 65
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->Query(I)V

    .line 66
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->GetMiniSetData()V

    .line 37
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 41
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemSteeringLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgZxd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 42
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemDayLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRxd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 43
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemYbLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgYbd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 45
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->HomeLightTime:I

    .line 46
    .local v0, "time":I
    if-ltz v0, :cond_2

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 54
    .end local v0    # "time":I
    :cond_1
    :goto_0
    return-void

    .line 49
    .restart local v0    # "time":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    .local v0, "id":I
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->getCarSetParam()I

    move-result v1

    .line 74
    .local v1, "param":I
    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgZxd:I

    if-ne v2, v3, :cond_0

    .line 77
    add-int/lit8 v1, v1, -0x80

    .line 81
    :goto_1
    const/16 v2, 0x21

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 79
    :cond_0
    add-int/lit16 v1, v1, 0x80

    goto :goto_1

    .line 84
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRxd:I

    if-ne v2, v3, :cond_1

    .line 85
    add-int/lit8 v1, v1, -0x40

    .line 89
    :goto_2
    const/16 v2, 0x22

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x40

    goto :goto_2

    .line 92
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgYbd:I

    if-ne v2, v3, :cond_2

    .line 93
    add-int/lit8 v1, v1, -0x20

    .line 97
    :goto_3
    const/16 v2, 0x23

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->CarSet(II)V

    goto :goto_0

    .line 95
    :cond_2
    add-int/lit8 v1, v1, 0x20

    goto :goto_3

    .line 100
    :pswitch_3
    new-instance v2, Lcom/ts/canview/CanNumInuptDlg;

    new-instance v3, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;)V

    .line 109
    const/4 v4, 0x3

    .line 100
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
