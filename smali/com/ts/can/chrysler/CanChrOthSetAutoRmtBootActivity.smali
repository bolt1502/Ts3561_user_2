.class public Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetAutoRmtBootActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_CLQDS:I = 0x1

.field private static final ITEM_MAX:I = 0x1

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetAutoRmtBootActivity"


# instance fields
.field protected mItemClqds:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 131
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 135
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 85
    sget v0, Lcom/ts/MainUI/R$string;->can_clqds:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mItemClqds:Lcom/ts/canview/CanItemSwitchList;

    .line 86
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 110
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RmtBootSta:I

    .line 105
    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->GetAdtData()V

    .line 92
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->ShowItem(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x40

    const/16 v1, 0x90

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->Query(II)V

    .line 56
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->GetSetData()V

    .line 42
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtBootUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtBootUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtBootUpdate:I

    .line 47
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mItemClqds:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtBootSta:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 51
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->IsHaveItem(I)Z

    move-result v0

    .line 118
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mItemClqds:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->ResetData(Z)V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 148
    :pswitch_0
    const/16 v1, 0x90

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RmtBootSta:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->CarSet(II)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->InitUI()V

    .line 37
    return-void
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
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 78
    const-string v0, "CanChrOthSetAutoRmtBootActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 62
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 63
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->LayoutUI()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->ResetData(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;->QueryData()V

    .line 67
    const-string v0, "CanChrOthSetAutoRmtBootActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
