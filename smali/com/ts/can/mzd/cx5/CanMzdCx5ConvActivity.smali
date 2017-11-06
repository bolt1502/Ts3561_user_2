.class public Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx5ConvActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_WIPERS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMzdCx5ConvActivity"

.field private static final mWipersArr:[I


# instance fields
.field private mItemWipers:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->can_off_intermittent:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->can_off_rain_sensing:I

    aput v2, v0, v1

    .line 29
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mWipersArr:[I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 148
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 149
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 150
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 152
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 159
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 160
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 161
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 105
    sget v0, Lcom/ts/MainUI/R$string;->can_wipers:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mWipersArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mItemWipers:Lcom/ts/canview/CanItemPopupList;

    .line 108
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 129
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->ShowItem(I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5Query(I)V

    .line 77
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    .line 67
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mItemWipers:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Wipers:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->IsHaveItem(I)Z

    move-result v0

    .line 144
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->ResetData(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->InitUI()V

    .line 56
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 193
    :pswitch_0
    const/16 v0, 0xa

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 96
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 98
    const-string v0, "CanMzdCx5ConvActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 83
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->ResetData(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5ConvActivity;->QueryData()V

    .line 87
    const-string v0, "CanMzdCx5ConvActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
