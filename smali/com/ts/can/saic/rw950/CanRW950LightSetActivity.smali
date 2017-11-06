.class public Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;
.super Lcom/ts/can/saic/rw950/CanRW950BaseActivity;
.source "CanRW950LightSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DDYS:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_XCD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanRW950LightSetActivity"

.field private static final mDdysArr:[I


# instance fields
.field private mItemDdys:Lcom/ts/canview/CanItemPopupList;

.field private mItemXcd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 27
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 28
    sget v2, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->can_1min:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 30
    sget v2, Lcom/ts/MainUI/R$string;->can_2min:I

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mDdysArr:[I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 105
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 106
    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 92
    sget v0, Lcom/ts/MainUI/R$string;->can_xcd:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    .line 94
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lsddys:I

    sget-object v2, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mDdysArr:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    .line 95
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->GetSetData()V

    .line 53
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->Update:I

    .line 58
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubXCD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubLSDDYS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 63
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->ResetData(Z)V

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 119
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RoeweCarSetData;->ubXCD:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->CarSet(II)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->InitUI()V

    .line 48
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 139
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->CarSet(II)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onPause()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/ts/can/saic/rw950/CanRW950BaseActivity;->onResume()V

    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->ResetData(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/ts/can/saic/rw950/CanRW950LightSetActivity;->QueryData()V

    .line 78
    return-void
.end method
