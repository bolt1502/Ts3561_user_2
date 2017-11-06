.class public Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanBlsuCarTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RADRA_VOL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanBlsuCarTypeActivity"


# instance fields
.field protected mItemRadraVol:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 135
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 136
    iget-object v1, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 138
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 87
    sget v0, Lcom/ts/MainUI/R$string;->can_fmqkg:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mItemRadraVol:Lcom/ts/canview/CanItemSwitchList;

    .line 89
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    invoke-static {v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    const/4 v0, 0x1

    .line 108
    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->ShowItem(I)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 61
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->BlsuT3CarQuery(II)V

    .line 62
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->BlsuT3GetRadarSta(Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;)V

    .line 48
    iget-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;->Update:I

    invoke-static {v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;->Update:I

    .line 53
    iget-object v0, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mItemRadraVol:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;->Sta:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 57
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 121
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mItemRadraVol:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->ResetData(Z)V

    .line 164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$BlsuM3_RadarSta;->Sta:I

    invoke-virtual {p0, v1}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->Neg(I)I

    move-result v1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->BlsuT3CarSet(I)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->InitUI()V

    .line 43
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 170
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 80
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 68
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 69
    invoke-virtual {p0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->LayoutUI()V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->ResetData(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/blsu/comm/CanBlsuCarTypeActivity;->QueryData()V

    .line 73
    return-void
.end method
