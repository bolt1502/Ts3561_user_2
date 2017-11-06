.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetDisplayActivity.java"


# static fields
.field public static final ITEM_AVG_CONSUMPTION:I = 0x1

.field public static final ITEM_AVG_SPEED:I = 0x3

.field public static final ITEM_CONSUMPTION:I = 0x2

.field public static final ITEM_DATE:I = 0x4

.field public static final ITEM_KD_DISTANCE:I


# instance fields
.field private mItemAvgConsumption:Lcom/ts/canview/CanItemSwitchList;

.field private mItemAvgSpeed:Lcom/ts/canview/CanItemSwitchList;

.field private mItemConsumption:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDate:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDistance:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    return-void
.end method

.method private getCarSetParam()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "param":I
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDate:I

    if-ne v1, v2, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x8

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgSpeed:I

    if-ne v1, v2, :cond_1

    .line 109
    add-int/lit8 v0, v0, 0x10

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgConsumption:I

    if-ne v1, v2, :cond_2

    .line 112
    add-int/lit8 v0, v0, 0x20

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgConsumption:I

    if-ne v1, v2, :cond_3

    .line 115
    add-int/lit8 v0, v0, 0x40

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRange:I

    if-ne v1, v2, :cond_4

    .line 118
    add-int/lit16 v0, v0, 0x80

    .line 121
    :cond_4
    return v0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/ts/MainUI/R$string;->can_kd_range:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemDistance:Lcom/ts/canview/CanItemSwitchList;

    .line 25
    sget v0, Lcom/ts/MainUI/R$string;->can_avg_consump:I

    .line 26
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemAvgConsumption:Lcom/ts/canview/CanItemSwitchList;

    .line 27
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    .line 28
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemConsumption:Lcom/ts/canview/CanItemSwitchList;

    .line 29
    sget v0, Lcom/ts/MainUI/R$string;->can_avg_spped:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemSwitchList;

    .line 30
    sget v0, Lcom/ts/MainUI/R$string;->can_date:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemDate:Lcom/ts/canview/CanItemSwitchList;

    .line 31
    return-void
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->Query(I)V

    .line 54
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->GetMiniSetData()V

    .line 38
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 42
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemDistance:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRange:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 43
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemAvgConsumption:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgConsumption:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemConsumption:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgConsumption:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemAvgSpeed:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgSpeed:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 46
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mItemDate:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDate:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 49
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "item":I
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->getCarSetParam()I

    move-result v1

    .line 61
    .local v1, "param":I
    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->CarSet(II)V

    .line 100
    return-void

    .line 63
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgRange:I

    if-ne v2, v3, :cond_0

    .line 64
    add-int/lit8 v1, v1, -0x80

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    add-int/lit16 v1, v1, 0x80

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgConsumption:I

    if-ne v2, v3, :cond_1

    .line 71
    add-int/lit8 v1, v1, -0x40

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x40

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgConsumption:I

    if-ne v2, v3, :cond_2

    .line 78
    add-int/lit8 v1, v1, -0x20

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x20

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAvgSpeed:I

    if-ne v2, v3, :cond_3

    .line 85
    add-int/lit8 v1, v1, -0x10

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x10

    .line 89
    goto :goto_0

    .line 91
    :pswitch_4
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDate:I

    if-ne v2, v3, :cond_4

    .line 92
    add-int/lit8 v1, v1, -0x8

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
