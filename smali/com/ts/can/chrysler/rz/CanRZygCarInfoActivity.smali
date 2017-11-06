.class public Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_AMP_INFO:I = 0xa

.field public static final ITEM_AUTO_RMT_BOOT:I = 0x6

.field public static final ITEM_BRAKE:I = 0x9

.field public static final ITEM_CAR_TYPE:I = 0x1

.field public static final ITEM_COMPASS:I = 0x8

.field public static final ITEM_DISPLAY:I = 0x2

.field public static final ITEM_ENGINE_OFF:I = 0x5

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x4

.field private static final ITEM_MAX:I = 0xa

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SAFE_ASSIST:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanRZygCarInfoActivity"


# instance fields
.field private mFirstV:I

.field private mItemAmpInfo:Lcom/ts/canview/CanItemIcoList;

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
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mFirstV:I

    .line 17
    return-void
.end method


# virtual methods
.method protected AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 248
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 249
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p0, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 250
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 252
    return-object v0
.end method

.method public GetFirstView()I
    .locals 10

    .prologue
    .line 320
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .local v3, "scrollBounds":Landroid/graphics/Rect;
    sget v7, Lcom/ts/MainUI/R$id;->can_comm_scrview:I

    invoke-virtual {p0, v7}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 322
    .local v4, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 323
    sget v7, Lcom/ts/MainUI/R$id;->can_comm_lineview:I

    invoke-virtual {p0, v7}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 324
    .local v1, "mLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 325
    .local v5, "total":I
    const/4 v2, -0x1

    .line 328
    .local v2, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 346
    :goto_1
    return v2

    .line 330
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 331
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 334
    const/4 v7, -0x1

    iget v8, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mFirstV:I

    if-ne v7, v8, :cond_1

    .line 336
    const-string v8, "CanRZygCarInfoActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "total = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", first visible = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 339
    goto :goto_1

    .line 328
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 109
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 110
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_display:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    .line 111
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v1, Lcom/ts/MainUI/R$string;->can_light_setup:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 112
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v1, Lcom/ts/MainUI/R$string;->can_door_lock_set:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 113
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v1, Lcom/ts/MainUI/R$string;->can_fdjgbxx:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemEngineOff:Lcom/ts/canview/CanItemIcoList;

    .line 114
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_rmt_ctl:I

    sget v1, Lcom/ts/MainUI/R$string;->can_zdkqssxt:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemAutoRmtBoot:Lcom/ts/canview/CanItemIcoList;

    .line 115
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v1, Lcom/ts/MainUI/R$string;->can_aqhjsfz:I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemSafeAssist:Lcom/ts/canview/CanItemIcoList;

    .line 116
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_compass:I

    sget v1, Lcom/ts/MainUI/R$string;->can_compass:I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemIcoList;

    .line 117
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v1, Lcom/ts/MainUI/R$string;->can_set_brake:I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemBrake:Lcom/ts/canview/CanItemIcoList;

    .line 118
    sget v0, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v1, Lcom/ts/MainUI/R$string;->can_eq:I

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->AddIcoItem(III)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemAmpInfo:Lcom/ts/canview/CanItemIcoList;

    .line 131
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->i2b(I)Z

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
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLight:I

    .line 158
    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLock:I

    .line 162
    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtEnOff:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtRmtBoot:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtDrvAss:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtCps:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AdtBrk:I

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AutoPark:I

    or-int v0, v1, v2

    .line 182
    goto :goto_0

    .line 185
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->AdtAmp:I

    .line 186
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
        :pswitch_9
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 141
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->ShowItem(I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->GetAdtData()V

    .line 66
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Update:I

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Update:I

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->LayoutUI()V

    .line 75
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 199
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemDisplay:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemEngineOff:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 222
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemAutoRmtBoot:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 226
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemSafeAssist:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 230
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemCompass:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 234
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemBrake:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 238
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->mItemAmpInfo:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 199
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
        :pswitch_9
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->ResetData(Z)V

    .line 315
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 269
    :pswitch_1
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 273
    :pswitch_2
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 277
    :pswitch_3
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 281
    :pswitch_4
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetEngOffActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 285
    :pswitch_5
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetAutoRmtBootActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 289
    :pswitch_6
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 293
    :pswitch_7
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetCompassActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 297
    :pswitch_8
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetBrakeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 301
    :pswitch_9
    const-class v1, Lcom/ts/can/chrysler/rz/CanRZygSetAmpActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 261
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
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->InitUI()V

    .line 61
    return-void
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
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 102
    const-string v0, "CanRZygCarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->ResetData(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygCarInfoActivity;->QueryData()V

    .line 91
    const-string v0, "CanRZygCarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
