.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetBrakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_FWMS:I = 0x1

.field public static final ITEM_FWMS_2:I = 0x3

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZDZCZD:I = 0x2

.field public static final ITEM_ZDZCZD_2:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetBrakeActivity"


# instance fields
.field protected mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

.field protected mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 185
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 186
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 187
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 190
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 176
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 177
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 179
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 100
    sget v0, Lcom/ts/MainUI/R$string;->can_service_mode:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzczd:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    .line 103
    sget v0, Lcom/ts/MainUI/R$string;->can_service_mode:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    .line 104
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzczd:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    .line 106
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->BrkSta:I

    .line 125
    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zdzczd:I

    .line 129
    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Fwms:I

    .line 133
    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoPark:I

    .line 137
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->GetAdtData()V

    .line 112
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 116
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->ShowItem(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->Query2(I)V

    .line 71
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->GetSetData()V

    .line 55
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    .line 60
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fwms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoPark:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 66
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 150
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->ResetData(Z)V

    .line 244
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 201
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    sget v2, Lcom/ts/MainUI/R$string;->can_service_mode:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 203
    sget v2, Lcom/ts/MainUI/R$string;->can_sevice_question:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    sget v2, Lcom/ts/MainUI/R$string;->can_no:I

    new-instance v3, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$1;-><init>(Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    sget v2, Lcom/ts/MainUI/R$string;->can_yes:I

    new-instance v3, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity$2;-><init>(Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 222
    :pswitch_1
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->CarSWSet(II)V

    goto :goto_0

    .line 226
    :pswitch_2
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fwms:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->CarSet(II)V

    goto :goto_0

    .line 230
    :pswitch_3
    const/16 v1, 0x62

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoPark:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->CarSet(II)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->InitUI()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 91
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 93
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 77
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 78
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->LayoutUI()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->ResetData(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetBrakeActivity;->QueryData()V

    .line 82
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
