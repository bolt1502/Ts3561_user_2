.class public Lcom/ts/can/CanHondDACarMotoRearDoorActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondDACarMotoRearDoorActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_SYWSBDDDK:I = 0x2

.field public static final ITEM_YKKQTJSD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanHondDACarMotoRearDoorActivity"

.field private static final mSywsbdddk:[I

.field private static final mSywsbdddkXp:[I

.field private static final mYkkqtjsd:[I


# instance fields
.field protected mItemStwsbdddk:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYkkqtjsd:Lcom/ts/canview/CanItemPopupList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-array v0, v4, [I

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_renhsh:I

    aput v1, v0, v2

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->can_unlock:I

    aput v1, v0, v3

    .line 30
    sput-object v0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mYkkqtjsd:[I

    .line 37
    new-array v0, v4, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_dd_and_shoud:I

    aput v1, v0, v2

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_shoud:I

    aput v1, v0, v3

    .line 36
    sput-object v0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSywsbdddk:[I

    .line 43
    new-array v0, v4, [I

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_shoud:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_dd_and_shoud:I

    aput v1, v0, v3

    .line 42
    sput-object v0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSywsbdddkXp:[I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

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
    .line 91
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 92
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 95
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->XtszUpdate:I

    .line 130
    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mItemYkkqtjsd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->Ykkqtjsd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mItemStwsbdddk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->Sywsbdddk:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 135
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->ResetData(Z)V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 53
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 57
    sget v0, Lcom/ts/MainUI/R$string;->can_ykkqtjsd:I

    sget-object v1, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mYkkqtjsd:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mItemYkkqtjsd:Lcom/ts/canview/CanItemPopupList;

    .line 59
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 61
    :cond_0
    sget v0, Lcom/ts/MainUI/R$string;->can_sywsbdddk:I

    sget-object v1, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSywsbdddk:[I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mItemStwsbdddk:Lcom/ts/canview/CanItemPopupList;

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_1
    sget v0, Lcom/ts/MainUI/R$string;->can_sywsbdddk:I

    sget-object v1, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mSywsbdddkXp:[I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->mItemStwsbdddk:Lcom/ts/canview/CanItemPopupList;

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const/16 v0, 0x25

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 112
    :pswitch_1
    const/16 v0, 0x26

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondDACarMotoRearDoorActivity;->ResetData(Z)V

    .line 86
    return-void
.end method
