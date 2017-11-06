.class public Lcom/ts/can/gm/comm/CanGL8ACActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGL8ACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static AC_SHOW_TIME:I = 0x0

.field private static final ITEM_AC:I = 0xa

.field private static final ITEM_AUTO:I = 0xc

.field private static final ITEM_ENTER_REAR_AC:I = 0xd

.field private static final ITEM_FOOT_FRONT_MODE:I = 0x7

.field private static final ITEM_FOOT_MODE:I = 0x6

.field private static final ITEM_HEAD_FOOT_MODE:I = 0x5

.field private static final ITEM_HEAD_MODE:I = 0x4

.field private static final ITEM_LEFT_DECREASE:I = 0x1

.field private static final ITEM_LEFT_INCREASE:I = 0x0

.field private static final ITEM_LOOP:I = 0xb

.field private static final ITEM_RIGHT_DECREASE:I = 0x3

.field private static final ITEM_RIGHT_INCREASE:I = 0x2

.field private static final ITEM_TEMP_SYNC:I = 0xe

.field private static final ITEM_WIND_DECREASE:I = 0x9

.field private static final ITEM_WIND_INCREASE:I = 0x8


# instance fields
.field private isACJump:Z

.field private mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnFootFrontMode:Lcom/ts/other/ParamButton;

.field private mBtnFootMode:Lcom/ts/other/ParamButton;

.field private mBtnHeadFootMode:Lcom/ts/other/ParamButton;

.field private mBtnHeadMode:Lcom/ts/other/ParamButton;

.field private mBtnLoop:Lcom/ts/other/ParamButton;

.field private mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field private mIvWindIcon:Landroid/widget/ImageView;

.field private mTvACToggle:Landroid/widget/TextView;

.field private mTvAuto:Landroid/widget/TextView;

.field private mTvLeftTemp:Landroid/widget/TextView;

.field private mTvRearSeat:Landroid/widget/TextView;

.field private mTvRightTemp:Landroid/widget/TextView;

.field private mTvSyncState:Landroid/widget/TextView;

.field private mTvWindState:Landroid/widget/TextView;

.field private mWindValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xbb8

    sput v0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->AC_SHOW_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->isACJump:Z

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_00:I

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 70
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_001:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_002:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 71
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_003:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_004:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 72
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_005:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_006:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 73
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_007:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_008:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mWindValues:[I

    .line 22
    return-void
.end method

.method private initUI()V
    .locals 12

    .prologue
    .line 86
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 87
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_bg01:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 89
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x31

    const/16 v2, 0x9e

    const/16 v3, 0x6e

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x35e

    const/16 v2, 0x9e

    const/16 v3, 0x6e

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRightTemp:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x122

    const/16 v2, 0x73

    const/16 v3, 0x32

    const/16 v4, 0x23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x20f

    const/16 v2, 0x49

    const/16 v3, 0x6f

    const/16 v4, 0x2f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvAuto:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x28f

    const/16 v2, 0x4b

    const/16 v3, 0x6f

    const/16 v4, 0x2f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRearSeat:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1c7

    const/16 v2, 0xb7

    const/16 v3, 0x71

    const/16 v4, 0x2c

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvSyncState:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x174

    const/16 v2, 0x118

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvWindState:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRightTemp:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_close:I

    const/16 v3, 0x11

    const/16 v4, 0xe

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    const/4 v2, -0x1

    const-string v3, "#FFCC00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvAuto:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_auto:I

    const/16 v3, 0x11

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvAuto:Landroid/widget/TextView;

    const/4 v2, -0x1

    const-string v3, "#FFCC00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpDnSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvAuto:Landroid/widget/TextView;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRearSeat:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_rear_seat:I

    const/16 v3, 0x11

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRearSeat:Landroid/widget/TextView;

    const/4 v2, -0x1

    const-string v3, "#FFCC00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpDnList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRearSeat:Landroid/widget/TextView;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvSyncState:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_sync_already:I

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvSyncState:Landroid/widget/TextView;

    const/4 v2, -0x1

    const-string v3, "#06ebf9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpDnSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvSyncState:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvWindState:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    .line 117
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x177

    const/16 v2, 0x126

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_00:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x105

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 120
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x185

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    .line 121
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xfc

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v10

    .line 122
    .local v10, "windDecrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x29f

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v11

    .line 123
    .local v11, "windIncrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x31

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v7

    .line 124
    .local v7, "leftIncrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x31

    const/16 v2, 0x126

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v6

    .line 125
    .local v6, "leftDecrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x35a

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v9

    .line 126
    .local v9, "rightIncrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x35a

    const/16 v2, 0x126

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v8

    .line 127
    .local v8, "rightDecrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xb0

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    .line 128
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x168

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    .line 129
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x21d

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    .line 130
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2d2

    const/16 v2, 0x1bd

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootFrontMode:Lcom/ts/other/ParamButton;

    .line 132
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_wxh_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 138
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_next_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_next_dn:I

    invoke-virtual {v0, v11, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 139
    const/16 v1, 0x8

    invoke-virtual {v0, v11, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 141
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_prv_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_prv_dn:I

    invoke-virtual {v0, v10, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 142
    const/16 v1, 0x9

    invoke-virtual {v0, v10, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 144
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_dn:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 147
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_dn:I

    invoke-virtual {v0, v6, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 150
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_dn:I

    invoke-virtual {v0, v9, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 151
    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 153
    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_dn:I

    invoke-virtual {v0, v8, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 154
    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon03_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon03_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootFrontMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon04_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon04_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootFrontMode:Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 167
    return-void
.end method

.method private updateACState(II)V
    .locals 3
    .param p1, "autoAc"    # I
    .param p2, "ac"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 249
    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 251
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {p2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 256
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_open:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 260
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvACToggle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_close:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateACUI()V
    .locals 6

    .prologue
    .line 188
    sget-object v4, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 189
    sget-object v4, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    const/4 v5, 0x0

    iput v5, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 192
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoAC:I

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-direct {p0, v4, v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateACState(II)V

    .line 193
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateTempValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAutoWind:I

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-direct {p0, v4, v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateWindValue(II)V

    .line 196
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    .line 197
    .local v0, "fgDFBL":I
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    .line 198
    .local v2, "fgParalle":I
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    .line 199
    .local v1, "fgDown":I
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v4, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    .line 200
    .local v3, "fgUp":I
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateWindMode(IIII)V

    .line 202
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnLoop:Lcom/ts/other/ParamButton;

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 203
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvAuto:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    invoke-static {v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 204
    iget-object v4, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvSyncState:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-static {v5}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 205
    return-void
.end method

.method private updateTempValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ltTemp"    # Ljava/lang/String;
    .param p2, "rtTemp"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvRightTemp:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 243
    :cond_0
    const-string v0, "\u2103"

    const-string v2, "\u00b0"

    .line 242
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "\u2103"

    const-string v2, "\u00b0"

    .line 244
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateWindMode(IIII)V
    .locals 3
    .param p1, "fgDFBL"    # I
    .param p2, "fgParalle"    # I
    .param p3, "fgDown"    # I
    .param p4, "fgUp"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 210
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootFrontMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 213
    invoke-static {p2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {p3}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootFrontMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {p2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-static {p3}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateWindValue(II)V
    .locals 3
    .param p1, "autoWind"    # I
    .param p2, "wind"    # I

    .prologue
    .line 226
    invoke-static {p1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvWindState:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_auto_wind:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mWindValues:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mWindValues:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->mTvWindState:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_wind_unit:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 6

    .prologue
    .line 321
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 322
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateACUI()V

    .line 326
    :cond_0
    invoke-static {}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget v4, Lcom/ts/can/gm/comm/CanGL8ACActivity;->AC_SHOW_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 327
    iget-boolean v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->isACJump:Z

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->finish()V

    .line 331
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x7

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 272
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 275
    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 278
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 281
    :pswitch_3
    const/16 v1, 0xd

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 284
    :pswitch_4
    const-class v1, Lcom/ts/can/gm/comm/CanGL8RearACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 287
    :pswitch_5
    const/4 v1, 0x4

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 290
    :pswitch_6
    const/4 v1, 0x5

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 293
    :pswitch_7
    const/16 v1, 0x14

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 296
    :pswitch_8
    const/16 v1, 0x15

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 299
    :pswitch_9
    const/4 v1, 0x6

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 302
    :pswitch_a
    invoke-static {v2, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 305
    :pswitch_b
    const/16 v1, 0x8

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 308
    :pswitch_c
    const/16 v1, 0x9

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 311
    :pswitch_d
    const/16 v1, 0xb

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 314
    :pswitch_e
    const/16 v1, 0xa

    invoke-static {v2, v1}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->setContentView(I)V

    .line 80
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGL8ACActivity;->isACJump:Z

    .line 82
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->initUI()V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 184
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 172
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 174
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 176
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 178
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGL8ACActivity;->updateACUI()V

    .line 179
    return-void
.end method
