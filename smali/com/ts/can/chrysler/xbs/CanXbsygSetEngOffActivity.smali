.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetEngOffActivity.java"

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

    .line 29
    new-array v0, v6, [I

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 31
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v5

    .line 28
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mDdycxmArr:[I

    .line 37
    new-array v0, v6, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_0s:I

    aput v1, v0, v2

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_time_45s:I

    aput v1, v0, v3

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_time_5min:I

    aput v1, v0, v4

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_time_10min:I

    aput v1, v0, v5

    .line 36
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mFdjgbycArr:[I

    .line 42
    return-void
.end method

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
    .line 166
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 167
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 168
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 170
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 176
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 177
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 179
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mDdycxmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$string;->can_fdjgbdyyc:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mFdjgbycArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    .line 112
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->EnHeadOffDelay:I

    .line 131
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->EngOffPWRDelay:I

    .line 135
    goto :goto_0

    .line 127
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
    .line 116
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->GetAdtData()V

    .line 118
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->ShowItem(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->Query2(I)V

    .line 80
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->GetSetData()V

    .line 66
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOptUpdate:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EnHeadOffDelay:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->EngOffPWRDelay:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 75
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->IsHaveItem(I)Z

    move-result v0

    .line 148
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemDdycxm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->mItemFdjgbyc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 148
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

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->ResetData(Z)V

    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    return-void

    .line 187
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
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->InitUI()V

    .line 61
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 220
    :pswitch_1
    const/16 v0, 0x28

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->CarSet(II)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 102
    const-string v0, "CanChrOthSetEngOffActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 87
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->LayoutUI()V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->ResetData(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetEngOffActivity;->QueryData()V

    .line 91
    const-string v0, "CanChrOthSetEngOffActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
