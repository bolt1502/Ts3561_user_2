.class public Lcom/ts/can/CanHondaADACarDistanceIllActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaADACarDistanceIllActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AUTOLIGHTSENS:I = 0x1

.field public static final ITEM_HEADLIGHTAUTOOFTIME:I = 0x2

.field public static final ITEM_INTERIORLIGHT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanHondaADACarDistanceIllActivity"

.field private static final mAutoLightSensArr:[I

.field private static final mHeadlightAutoOfTimeArr:[I

.field private static final mInteriorlightDimTimeArr:[I


# instance fields
.field protected mItemAutoLightSens:Lcom/ts/canview/CanItemPopupList;

.field protected mItemHeadlightAutoOfTime:Lcom/ts/canview/CanItemPopupList;

.field protected mItemInteriorlightDimTime:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_min:I

    aput v1, v0, v2

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_low:I

    aput v1, v0, v3

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_mid:I

    aput v1, v0, v4

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_high:I

    aput v1, v0, v5

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_max:I

    aput v1, v0, v6

    .line 32
    sput-object v0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mAutoLightSensArr:[I

    .line 42
    new-array v0, v6, [I

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_0s:I

    aput v1, v0, v2

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_15s:I

    aput v1, v0, v3

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_30s:I

    aput v1, v0, v4

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_60s:I

    aput v1, v0, v5

    .line 41
    sput-object v0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mHeadlightAutoOfTimeArr:[I

    .line 50
    new-array v0, v5, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_15s:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_30s:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_headlightautoofftime_60s:I

    aput v1, v0, v4

    .line 49
    sput-object v0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mInteriorlightDimTimeArr:[I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 16
    return-void
.end method


# virtual methods
.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 90
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 91
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 94
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DisIllUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DisIllUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DisIllUpdate:I

    .line 131
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemAutoLightSens:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->AutoLightSens:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemHeadlightAutoOfTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->lightofftime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemInteriorlightDimTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->lightdimmingtime:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 137
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->ResetData(Z)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->setContentView(I)V

    .line 64
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_autolightsensitivity:I

    sget-object v1, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mAutoLightSensArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemAutoLightSens:Lcom/ts/canview/CanItemPopupList;

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->can_headlightautoofftime:I

    sget-object v1, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mHeadlightAutoOfTimeArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemHeadlightAutoOfTime:Lcom/ts/canview/CanItemPopupList;

    .line 67
    sget v0, Lcom/ts/MainUI/R$string;->can_interiorlightdimmingtime:I

    sget-object v1, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mInteriorlightDimTimeArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->mItemInteriorlightDimTime:Lcom/ts/canview/CanItemPopupList;

    .line 68
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 110
    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaADACarDistanceIllActivity;->ResetData(Z)V

    .line 85
    return-void
.end method
