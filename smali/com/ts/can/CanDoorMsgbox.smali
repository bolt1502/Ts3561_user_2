.class public Lcom/ts/can/CanDoorMsgbox;
.super Ljava/lang/Object;
.source "CanDoorMsgbox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanDoorMsgbox"


# instance fields
.field private mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

.field protected mDlg:Landroid/app/AlertDialog;

.field private mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

.field private mImgLtBelt:Lcom/ts/other/CustomImgView;

.field private mImgRtBelt:Lcom/ts/other/CustomImgView;

.field protected mIsShow:Z

.field private mIvHead:Lcom/ts/other/CustomImgView;

.field private mIvLF:Lcom/ts/other/CustomImgView;

.field private mIvLR:Lcom/ts/other/CustomImgView;

.field private mIvRF:Lcom/ts/other/CustomImgView;

.field private mIvRR:Lcom/ts/other/CustomImgView;

.field private mIvRear:Lcom/ts/other/CustomImgView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    .line 50
    return-void
.end method

.method private AddImage(III)Lcom/ts/other/CustomImgView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "res"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mManager:Lcom/ts/other/RelativeLayoutManager;

    add-int/lit16 v1, p1, -0x179

    add-int/lit8 v2, p2, -0x5c

    invoke-virtual {v0, v1, v2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v0

    return-object v0
.end method

.method private AddImage(IIII)Lcom/ts/other/CustomImgView;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resup"    # I
    .param p4, "resdn"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mManager:Lcom/ts/other/RelativeLayoutManager;

    add-int/lit16 v2, p1, -0x179

    add-int/lit8 v3, p2, -0x5c

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    .line 142
    .local v0, "img":Lcom/ts/other/CustomImgView;
    invoke-virtual {v0, p3, p4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 143
    return-object v0
.end method

.method private SetShowFlg(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/ts/can/CanDoorMsgbox;->mIsShow:Z

    if-eq v0, p1, :cond_0

    .line 341
    iput-boolean p1, p0, Lcom/ts/can/CanDoorMsgbox;->mIsShow:Z

    .line 342
    const-string v0, "CanDoorMsgbox"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetShowFlg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
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

    .line 283
    sget-object v1, Lcom/lgb/canmodule/Can;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 284
    .local v1, "curDoor":Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
    const/16 v7, 0x8

    new-array v3, v7, [I

    .line 285
    .local v3, "doorVal":[I
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    aput v7, v3, v6

    .line 286
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    aput v7, v3, v5

    .line 287
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    aput v7, v3, v9

    .line 288
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    aput v7, v3, v10

    .line 289
    iget v7, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    aput v7, v3, v11

    .line 290
    const/4 v7, 0x5

    iget v8, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    aput v8, v3, v7

    .line 291
    const/4 v7, 0x6

    aput v6, v3, v7

    .line 292
    const/4 v7, 0x7

    aput v6, v3, v7

    .line 294
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;-><init>()V

    .line 295
    .local v0, "belt":Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;
    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GetSeatBelt(Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;)V

    .line 296
    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->UpdateOnce:I

    if-eqz v7, :cond_0

    .line 298
    const/4 v7, 0x6

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->LtUnClose:I

    and-int/lit8 v8, v8, 0x1

    aput v8, v3, v7

    .line 299
    const/4 v7, 0x7

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->RtUnClose:I

    and-int/lit8 v8, v8, 0x1

    aput v8, v3, v7

    .line 302
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v7

    if-ne v9, v7, :cond_1

    .line 304
    aput v6, v3, v6

    .line 305
    aput v6, v3, v5

    .line 308
    :cond_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v7

    if-ne v9, v7, :cond_2

    .line 310
    aput v6, v3, v9

    .line 311
    aput v6, v3, v10

    .line 314
    :cond_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 316
    aput v6, v3, v11

    .line 319
    :cond_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 321
    const/4 v7, 0x5

    aput v6, v3, v7

    .line 325
    :cond_4
    const/4 v2, 0x0

    .line 326
    .local v2, "doorCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-lt v4, v7, :cond_6

    move v5, v6

    .line 334
    :cond_5
    return v5

    .line 328
    :cond_6
    aget v7, v3, v4

    add-int/2addr v2, v7

    .line 329
    if-gtz v2, :cond_5

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Hide()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->Show(I)V

    .line 64
    return-void
.end method

.method public Init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x1d1

    const/16 v11, 0x195

    const/16 v10, 0xec

    const/16 v9, 0xad

    const/16 v8, 0xa8

    .line 68
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 70
    const-string v5, "CanDoorMsgbox"

    const-string v6, "Already have instance"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/CanDoorMsgbox;->Hide()V

    .line 132
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    .line 79
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 84
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 88
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    sget v6, Lcom/ts/MainUI/R$layout;->can_door_msgbox:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 89
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mWindow:Landroid/view/Window;

    .line 94
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 95
    .local v4, "wmlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    const/4 v1, 0x0

    .local v1, "dx":I
    const/4 v2, 0x0

    .line 98
    .local v2, "dy":I
    invoke-static {}, Lcom/ts/can/CanFunc;->IsCadillacXt51280x480()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const/16 v1, 0x80

    .line 101
    const/16 v2, 0x3c

    .line 103
    :cond_1
    add-int/lit16 v5, v1, 0x178

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 104
    rsub-int/lit8 v5, v2, 0x5c

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 105
    const/16 v5, 0x140

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 106
    const/16 v5, 0x158

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 107
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mWindow:Landroid/view/Window;

    const v6, 0x20008

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 112
    const-string v5, "CanDoorMsgbox"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "can_door_box wmlpw = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->hide()V

    .line 116
    iget-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mWindow:Landroid/view/Window;

    sget v6, Lcom/ts/MainUI/R$id;->can_door_box:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 117
    .local v3, "rl":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/ts/other/RelativeLayoutManager;

    invoke-direct {v5, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 118
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0xdc

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    const-string v5, "CanDoorMsgbox"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "can_door_box w = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget v5, Lcom/ts/MainUI/R$drawable;->can_door_box_left:I

    invoke-direct {p0, v11, v9, v5}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvLF:Lcom/ts/other/CustomImgView;

    .line 123
    const/16 v5, 0x232

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_right:I

    invoke-direct {p0, v5, v9, v6}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRF:Lcom/ts/other/CustomImgView;

    .line 124
    sget v5, Lcom/ts/MainUI/R$drawable;->can_door_box_left:I

    invoke-direct {p0, v11, v10, v5}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvLR:Lcom/ts/other/CustomImgView;

    .line 125
    const/16 v5, 0x232

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_right:I

    invoke-direct {p0, v5, v10, v6}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRR:Lcom/ts/other/CustomImgView;

    .line 126
    const/16 v5, 0x6c

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_head:I

    invoke-direct {p0, v12, v5, v6}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvHead:Lcom/ts/other/CustomImgView;

    .line 127
    const/16 v5, 0x144

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_rear:I

    invoke-direct {p0, v12, v5, v6}, Lcom/ts/can/CanDoorMsgbox;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRear:Lcom/ts/other/CustomImgView;

    .line 129
    const/16 v5, 0x1e3

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_aqd_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_door_box_aqd_dn:I

    invoke-direct {p0, v5, v8, v6, v7}, Lcom/ts/can/CanDoorMsgbox;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    .line 130
    const/16 v5, 0x201

    sget v6, Lcom/ts/MainUI/R$drawable;->can_door_box_aqd_up:I

    sget v7, Lcom/ts/MainUI/R$drawable;->can_door_box_aqd_dn:I

    invoke-direct {p0, v5, v8, v6, v7}, Lcom/ts/can/CanDoorMsgbox;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/CanDoorMsgbox;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    goto/16 :goto_0
.end method

.method public OnTimer()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/ts/can/CanDoorMsgbox;->mIsShow:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateDoor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/ts/can/CanDoorMsgbox;->UpdateDoorUI()V

    .line 173
    :cond_0
    invoke-static {}, Lcom/ts/can/CanDoorMsgbox;->fsNeedShowDoor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->Show(I)V

    .line 179
    :cond_1
    return-void
.end method

.method public Show(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 150
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->SetShowFlg(Z)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanDoorMsgbox;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->SetShowFlg(Z)V

    goto :goto_0
.end method

.method public Update()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/ts/can/CanDoorMsgbox;->fsNeedShowDoor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/ts/can/CanDoorMsgbox;->UpdateDoorUI()V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->Show(I)V

    .line 59
    :cond_0
    return-void
.end method

.method protected UpdateDoorUI()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    sget-object v0, Lcom/lgb/canmodule/Can;->mDoorInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    .line 186
    .local v0, "curDoor":Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 202
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    .line 206
    :goto_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 221
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 222
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    .line 226
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    .line 236
    :goto_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    .line 246
    :goto_3
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvLF:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 247
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRF:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 248
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvLR:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 249
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRR:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 250
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvRear:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 251
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mIvHead:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    invoke-virtual {p0, v1, v4}, Lcom/ts/can/CanDoorMsgbox;->showDoor(Landroid/widget/ImageView;I)V

    .line 253
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GetSeatBelt(Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;)V

    .line 254
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->UpdateOnce:I

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 257
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 266
    :goto_4
    return-void

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 191
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LFOpen:I

    .line 197
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RFOpen:I

    goto/16 :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 211
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto/16 :goto_1

    .line 216
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->LROpen:I

    .line 217
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RROpen:I

    goto/16 :goto_1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->RearOpen:I

    goto/16 :goto_2

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mDoor:Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_DoorInfo;->HeadOpen:I

    goto/16 :goto_3

    .line 261
    :cond_2
    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->LtUnClose:I

    if-ge v1, v5, :cond_3

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 262
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->RtUnClose:I

    if-ge v4, v5, :cond_4

    :goto_6
    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 263
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mImgLtBelt:Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->LtUnClose:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 264
    iget-object v1, p0, Lcom/ts/can/CanDoorMsgbox;->mImgRtBelt:Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanDoorMsgbox;->mBelt:Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CanSeatBelt;->RtUnClose:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    goto :goto_4

    :cond_3
    move v1, v3

    .line 261
    goto :goto_5

    :cond_4
    move v2, v3

    .line 262
    goto :goto_6

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->SetShowFlg(Z)V

    .line 358
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanDoorMsgbox;->SetShowFlg(Z)V

    .line 351
    return-void
.end method

.method protected showDoor(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "val"    # I

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
