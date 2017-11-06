.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetXjActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CLJZMS:I = 0x5

.field public static final ITEM_LTQJD:I = 0x3

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SXCZDTJXJ:I = 0x1

.field public static final ITEM_XSXJXX:I = 0x2

.field public static final ITEM_YSMS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanXbsygSetXjActivity"


# instance fields
.field protected mItemCljzms:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemLtqjd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSxczdtjxj:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemXsxjxx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemYsms:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 195
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 196
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 199
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 205
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 206
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 207
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 209
    return-object v0
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 108
    sget v0, Lcom/ts/MainUI/R$string;->can_sxczdtjxj:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemSxczdtjxj:Lcom/ts/canview/CanItemSwitchList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$string;->can_xsxjxx:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemXsxjxx:Lcom/ts/canview/CanItemSwitchList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_ltqjd:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemLtqjd:Lcom/ts/canview/CanItemSwitchList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$string;->can_cljzms:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemCljzms:Lcom/ts/canview/CanItemSwitchList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$string;->can_ysms:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemYsms:Lcom/ts/canview/CanItemSwitchList;

    .line 113
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Sxzdtjxj:I

    .line 134
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Xsxjxx:I

    .line 138
    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ltqjd:I

    .line 142
    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ysms:I

    .line 146
    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cljzms:I

    .line 150
    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->GetAdtData()V

    .line 121
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 125
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->ShowItem(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->Query2(I)V

    .line 79
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->GetSetData()V

    .line 58
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->XJUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->XJUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->XJUpdate:I

    .line 63
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemSxczdtjxj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Sxzdtjxj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemXsxjxx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Xsxjxx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemLtqjd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ltqjd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemYsms:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ysms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemCljzms:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cljzms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 74
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->IsHaveItem(I)Z

    move-result v0

    .line 165
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemSxczdtjxj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemXsxjxx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemLtqjd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemYsms:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mItemCljzms:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->ResetData(Z)V

    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 217
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const/16 v1, 0x41

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Sxzdtjxj:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->CarSWSet(II)V

    goto :goto_0

    .line 225
    :pswitch_1
    const/16 v1, 0x42

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Xsxjxx:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->CarSWSet(II)V

    goto :goto_0

    .line 229
    :pswitch_2
    const/16 v1, 0x43

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ltqjd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->CarSWSet(II)V

    goto :goto_0

    .line 233
    :pswitch_3
    const/16 v1, 0x44

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ysms:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->CarSWSet(II)V

    goto :goto_0

    .line 237
    :pswitch_4
    const/16 v1, 0x45

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cljzms:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->CarSWSet(II)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 257
    .line 266
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 101
    const-string v0, "CanXbsygSetXjActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 85
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->ResetData(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->QueryData()V

    .line 88
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetXjActivity;->LayoutUI()V

    .line 90
    const-string v0, "CanXbsygSetXjActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
