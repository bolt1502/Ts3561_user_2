.class public Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetBrakeActivity.java"

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
    .line 17
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 182
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 183
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 186
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 172
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 173
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 175
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 97
    sget v0, Lcom/ts/MainUI/R$string;->can_service_mode:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    .line 98
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzczd:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    .line 100
    sget v0, Lcom/ts/MainUI/R$string;->can_service_mode:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    .line 101
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzczd:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    .line 102
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->BrkSta:I

    .line 121
    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Zdzczd:I

    .line 125
    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Fwms:I

    .line 129
    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoPark:I

    .line 133
    goto :goto_0

    .line 117
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
    .line 106
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->GetAdtData()V

    .line 108
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 112
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->ShowItem(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 67
    const/16 v0, 0x40

    const/16 v1, 0xc0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->Query(II)V

    .line 68
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->GetSetData()V

    .line 52
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->BrkUpdate:I

    .line 57
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fwms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoPark:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 63
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 146
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemFwms:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemFwms2:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mItemZdzczd2:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 146
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
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->ResetData(Z)V

    .line 240
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 197
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    sget v2, Lcom/ts/MainUI/R$string;->can_service_mode:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 199
    sget v2, Lcom/ts/MainUI/R$string;->can_sevice_question:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 200
    sget v2, Lcom/ts/MainUI/R$string;->can_no:I

    new-instance v3, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity$1;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity$1;-><init>(Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 207
    sget v2, Lcom/ts/MainUI/R$string;->can_yes:I

    new-instance v3, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity$2;-><init>(Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 218
    :pswitch_1
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Zdzczd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->CarSWSet(II)V

    goto :goto_0

    .line 222
    :pswitch_2
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fwms:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->CarSet(II)V

    goto :goto_0

    .line 226
    :pswitch_3
    const/16 v1, 0x62

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->AutoPark:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->CarSet(II)V

    goto :goto_0

    .line 194
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
    .line 43
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->InitUI()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 88
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 90
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->LayoutUI()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->ResetData(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;->QueryData()V

    .line 79
    const-string v0, "CanChrOthSetBrakeActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
