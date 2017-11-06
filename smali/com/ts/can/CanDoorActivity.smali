.class public Lcom/ts/can/CanDoorActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanDoorActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanDoorActivity"


# instance fields
.field private mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

.field private mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

.field private mImgLtBelt:Lcom/ts/other/CustomImgView;

.field private mImgRtBelt:Lcom/ts/other/CustomImgView;

.field private mIvHead:Landroid/widget/ImageView;

.field private mIvLF:Landroid/widget/ImageView;

.field private mIvLR:Landroid/widget/ImageView;

.field private mIvRF:Landroid/widget/ImageView;

.field private mIvRR:Landroid/widget/ImageView;

.field private mIvRear:Landroid/widget/ImageView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    .line 20
    return-void
.end method

.method public static fsNeedShowDoor()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 180
    sget-object v1, Lcom/lgb/canmodule/Can;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 181
    .local v1, "curDoor":Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
    const/16 v7, 0x8

    new-array v3, v7, [I

    .line 182
    .local v3, "doorVal":[I
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    aput v7, v3, v6

    .line 183
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    aput v7, v3, v5

    .line 184
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    aput v7, v3, v9

    .line 185
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    aput v7, v3, v10

    .line 186
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    aput v7, v3, v11

    .line 187
    const/4 v7, 0x5

    iget v8, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    aput v8, v3, v7

    .line 188
    const/4 v7, 0x6

    aput v6, v3, v7

    .line 189
    const/4 v7, 0x7

    aput v6, v3, v7

    .line 191
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;-><init>()V

    .line 192
    .local v0, "belt":Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;
    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GetSeatBelt(Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;)V

    .line 193
    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->UpdateOnce:I

    if-eqz v7, :cond_0

    .line 195
    const/4 v7, 0x6

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->LtUnClose:I

    aput v8, v3, v7

    .line 196
    const/4 v7, 0x7

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->RtUnClose:I

    aput v8, v3, v7

    .line 199
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v7

    if-ne v9, v7, :cond_1

    .line 201
    aput v6, v3, v6

    .line 202
    aput v6, v3, v5

    .line 205
    :cond_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v7

    if-ne v9, v7, :cond_2

    .line 207
    aput v6, v3, v9

    .line 208
    aput v6, v3, v10

    .line 211
    :cond_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 213
    aput v6, v3, v11

    .line 216
    :cond_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 218
    const/4 v7, 0x5

    aput v6, v3, v7

    .line 222
    :cond_4
    const/4 v2, 0x0

    .line 223
    .local v2, "doorCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-lt v4, v7, :cond_6

    move v5, v6

    .line 231
    :cond_5
    return v5

    .line 225
    :cond_6
    aget v7, v3, v4

    add-int/2addr v2, v7

    .line 226
    if-gtz v2, :cond_5

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static showDoor(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateDoor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/can/CanDoorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    const/4 v1, 0x1

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateDoor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/ts/can/CanDoorActivity;->updateDoorUI()V

    .line 274
    :cond_0
    invoke-static {}, Lcom/ts/can/CanDoorActivity;->fsNeedShowDoor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/ts/can/CanDoorActivity;->finish()V

    .line 278
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x7d

    .line 41
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_door:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->setContentView(I)V

    .line 43
    sget v0, Lcom/ts/MainUI/R$id;->can_door_lf:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvLF:Landroid/widget/ImageView;

    .line 44
    sget v0, Lcom/ts/MainUI/R$id;->can_door_rf:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvRF:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/ts/MainUI/R$id;->can_door_lr:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvLR:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/ts/MainUI/R$id;->can_door_rr:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvRR:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/ts/MainUI/R$id;->can_door_rear:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvRear:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/ts/MainUI/R$id;->can_door_head:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mIvHead:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 52
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_layout_door:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 53
    iget-object v0, p0, Lcom/ts/can/CanDoorActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x1c9

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    .line 54
    iget-object v0, p0, Lcom/ts/can/CanDoorActivity;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aqd_dn:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_aqd_up:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 56
    iget-object v0, p0, Lcom/ts/can/CanDoorActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x201

    invoke-virtual {v0, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanDoorActivity;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    .line 57
    iget-object v0, p0, Lcom/ts/can/CanDoorActivity;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aqd_dn:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_aqd_up:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/CanDoorActivity;->updateDoorUI()V

    .line 66
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 68
    return-void
.end method

.method protected showDoor(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "val"    # I

    .prologue
    .line 81
    invoke-static {p2}, Lcom/ts/can/CanDoorActivity;->int2Bool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateDoorUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    sget-object v0, Lcom/lgb/canmodule/Can;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 96
    .local v0, "curDoor":Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 112
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    .line 116
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 131
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 132
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    .line 136
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    .line 146
    :goto_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    .line 156
    :goto_3
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvLF:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 157
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvRF:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvLR:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 159
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvRR:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 160
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvRear:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 161
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mIvHead:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanDoorActivity;->showDoor(Landroid/widget/ImageView;I)V

    .line 163
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GetSeatBelt(Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;)V

    .line 164
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->UpdateOnce:I

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 167
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 176
    :goto_4
    return-void

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 107
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto/16 :goto_0

    .line 120
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 121
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto/16 :goto_1

    .line 126
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 127
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto/16 :goto_1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    goto/16 :goto_2

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    iput v2, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    goto/16 :goto_3

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 172
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 173
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->LtUnClose:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 174
    iget-object v1, p0, Lcom/ts/can/CanDoorActivity;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanDoorActivity;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->RtUnClose:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    goto :goto_4

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
