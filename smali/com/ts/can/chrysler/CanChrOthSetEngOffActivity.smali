.class public Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetEngOffActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DDYCXM:I = 0x1

.field public static final ITEM_FDJGBYC:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetEngOffActivity"

.field private static final mDdycxmArr:[I

.field private static final mFdjgbycArr:[I


# instance fields
.field protected mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-array v0, v6, [I

    .line 28
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 29
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 26
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mDdycxmArr:[I

    .line 35
    new-array v0, v6, [I

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_time_45s:I

    aput v1, v0, v3

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_time_5min:I

    aput v1, v0, v4

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_time_10min:I

    aput v1, v0, v5

    .line 34
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mFdjgbycArr:[I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 187
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 188
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 190
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 195
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 196
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 199
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mDdycxmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 130
    sget v0, Lcom/ts/MainUI/R$string;->can_fdjgbdyyc:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mFdjgbycArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    .line 132
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->EnHeadOffDelay:I

    .line 151
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->EngOffPWRDelay:I

    .line 155
    goto :goto_0

    .line 147
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
    .line 136
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->GetAdtData()V

    .line 138
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->ShowItem(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 99
    invoke-virtual {p0, v0, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->Query(II)V

    .line 100
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->GetSetData()V

    .line 64
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdate:I

    .line 69
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EnHeadOffDelay:I

    div-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOffPWRDelay:I

    sparse-switch v0, :sswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 74
    :sswitch_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x14 -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->IsHaveItem(I)Z

    move-result v0

    .line 168
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->ResetData(Z)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 219
    :pswitch_0
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->InitUI()V

    .line 59
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0x41

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const/16 v0, 0x40

    mul-int/lit8 v1, p2, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 240
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 243
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 247
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 251
    :pswitch_4
    const/16 v0, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 255
    :pswitch_5
    const/16 v0, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 120
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 122
    const-string v0, "CanChrOthSetEngOffActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 106
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 107
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->LayoutUI()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->ResetData(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;->QueryData()V

    .line 111
    const-string v0, "CanChrOthSetEngOffActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
