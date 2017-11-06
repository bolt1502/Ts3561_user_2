.class public Lcom/ts/can/CanHondDACarDistanceActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondDACarDistanceActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ADJUSTOUTSIDETEMP:I = 0x3

.field public static final ITEM_TRIPARESETTIMING:I = 0x2

.field public static final ITEM_TRIPBRESETTIMING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanHondDACarDistanceActivity"

.field private static final mTripResetTimingArr:[I


# instance fields
.field private mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

.field protected mItemTripAReset:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTripBReset:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_tripbresettiming_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_tripbresettiming_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_tripbresettiming_3:I

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/ts/can/CanHondDACarDistanceActivity;->mTripResetTimingArr:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 78
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 81
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DistanceUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarDistanceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DistanceUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarDistanceActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->DistanceUpdate:I

    .line 125
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemTripBReset:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->TripBReset:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemTripAReset:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->TripAReset:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->AdjustTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->AdjustTemp:I

    add-int/lit8 v2, v2, -0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetValText(Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarDistanceActivity;->ResetData(Z)V

    .line 139
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 90
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarDistanceActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 49
    sget v0, Lcom/ts/MainUI/R$string;->can_tripbresettiming:I

    sget-object v1, Lcom/ts/can/CanHondDACarDistanceActivity;->mTripResetTimingArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarDistanceActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemTripBReset:Lcom/ts/canview/CanItemPopupList;

    .line 50
    sget v0, Lcom/ts/MainUI/R$string;->can_triparesettiming:I

    sget-object v1, Lcom/ts/can/CanHondDACarDistanceActivity;->mTripResetTimingArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarDistanceActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemTripAReset:Lcom/ts/canview/CanItemPopupList;

    .line 51
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_adjustoutsidetemp:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    .line 52
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 54
    iget-object v0, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarDistanceActivity;->mItemAdjustOutsideTemp:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 62
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 70
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarDistanceActivity;->ResetData(Z)V

    .line 72
    return-void
.end method
