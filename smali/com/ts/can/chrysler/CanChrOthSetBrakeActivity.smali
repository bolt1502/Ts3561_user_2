.class public Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetBrakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_FWMS:I = 0x1

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZDZCZD:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetBrakeActivity"


# instance fields
.field protected mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 157
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 147
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 148
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 150
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 90
    sget v0, Lcom/ts/MainUI/R$string;->can_service_mode:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    .line 91
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzczd:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    .line 93
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->BrkSta:I

    .line 112
    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zdzczd:I

    .line 116
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->GetAdtData()V

    .line 99
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->ShowItem(I)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x40

    const/16 v1, 0xc0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->Query(II)V

    .line 61
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->GetSetData()V

    .line 48
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    .line 53
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 56
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 129
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->ResetData(Z)V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 172
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    sget v2, Lcom/ts/MainUI/R$string;->can_service_mode:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    sget v2, Lcom/ts/MainUI/R$string;->can_sevice_question:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    sget v2, Lcom/ts/MainUI/R$string;->can_no:I

    new-instance v3, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$1;-><init>(Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    sget v2, Lcom/ts/MainUI/R$string;->can_yes:I

    new-instance v3, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity$2;-><init>(Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 193
    :pswitch_1
    const/16 v1, 0xc1

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->CarSWSet(II)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->InitUI()V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 81
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 83
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 67
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 68
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->LayoutUI()V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->ResetData(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;->QueryData()V

    .line 72
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method
