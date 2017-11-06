.class public Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AUTO_RMT_BOOT:I = 0x6

.field public static final ITEM_BRAKE:I = 0x9

.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_COMPASS:I = 0x8

.field public static final ITEM_DISPLAY:I = 0x2

.field public static final ITEM_ENGINE_OFF:I = 0x5

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x4

.field private static final ITEM_MAX:I = 0x9

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SAFE_ASSIST:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanChrOthCarInfoActivity"


# instance fields
.field private mItemAutoRmtBoot:Lcom/ts/canview/CanItemIcoList;

.field private mItemBrake:Lcom/ts/canview/CanItemIcoList;

.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemCompass:Lcom/ts/canview/CanItemIcoList;

.field private mItemDisplay:Lcom/ts/canview/CanItemIcoList;

.field private mItemEngineOff:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemSafeAssist:Lcom/ts/canview/CanItemIcoList;

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
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 240
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 241
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 242
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 244
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 120
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 121
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_display:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_light_setup:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v1, Lcom/ts/MainUI/R$string;->can_door_lock_set:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v1, Lcom/ts/MainUI/R$string;->can_fdjgbxx:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemEngineOff:Lcom/ts/canview/CanItemIcoList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_rmt_ctl:I

    sget v1, Lcom/ts/MainUI/R$string;->can_zdkqssxt:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemAutoRmtBoot:Lcom/ts/canview/CanItemIcoList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v1, Lcom/ts/MainUI/R$string;->can_aqhjsfz:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemSafeAssist:Lcom/ts/canview/CanItemIcoList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_compass:I

    sget v1, Lcom/ts/MainUI/R$string;->can_compass:I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemIcoList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v1, Lcom/ts/MainUI/R$string;->can_set_brake:I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemBrake:Lcom/ts/canview/CanItemIcoList;

    .line 130
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->GetAdtData()V

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_0
    const/4 v0, 0x1

    .line 150
    goto :goto_0

    .line 153
    :pswitch_1
    const/4 v0, 0x1

    .line 154
    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLight:I

    .line 158
    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLock:I

    .line 162
    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtEnOff:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtRmtBoot:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtDrvAss:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtCps:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AdtBrk:I

    .line 182
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->ShowItem(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 86
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 195
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 214
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemEngineOff:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 218
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemAutoRmtBoot:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 222
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemSafeAssist:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 226
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 230
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->mItemBrake:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->ResetData(Z)V

    .line 303
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 257
    :pswitch_0
    const-class v1, Lcom/ts/can/chrysler/CanChrOthCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 261
    :pswitch_1
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 265
    :pswitch_2
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 269
    :pswitch_3
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 273
    :pswitch_4
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetEngOffActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 277
    :pswitch_5
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetAutoRmtBootActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 281
    :pswitch_6
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 285
    :pswitch_7
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetCompassActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 289
    :pswitch_8
    const-class v1, Lcom/ts/can/chrysler/CanChrOthSetBrakeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->InitUI()V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 111
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 113
    const-string v0, "CanChrOthCarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 97
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->ResetData(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->QueryData()V

    .line 100
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthCarInfoActivity;->LayoutUI()V

    .line 102
    const-string v0, "CanChrOthCarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
