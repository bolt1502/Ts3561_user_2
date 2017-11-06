.class public Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanSBGL8RearACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AC_SHOW_TIME:J = 0xbb8L

.field private static final ITEM_BACK_FRONT:I = 0x0

.field private static final ITEM_FOOT_MODE:I = 0x7

.field private static final ITEM_HEAD_FOOT_MODE:I = 0x6

.field private static final ITEM_HEAD_MODE:I = 0x5

.field private static final ITEM_REAR_AUTO:I = 0x8

.field private static final ITEM_TEMP_DECREASE:I = 0x4

.field private static final ITEM_TEMP_INCREASE:I = 0x3

.field private static final ITEM_WIND_DECREASE:I = 0x2

.field private static final ITEM_WIND_INCREASE:I = 0x1


# instance fields
.field private isAcJump:Z

.field private mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

.field private mBtnFootMode:Lcom/ts/other/ParamButton;

.field private mBtnHeadFootMode:Lcom/ts/other/ParamButton;

.field private mBtnHeadMode:Lcom/ts/other/ParamButton;

.field private mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field private mIvWindIcon:Landroid/widget/ImageView;

.field private mTvRearSeatState:Landroid/widget/TextView;

.field private mTvTemp:Landroid/widget/TextView;

.field private mTvWindValue:Landroid/widget/TextView;

.field private mWindValues:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 44
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 45
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 46
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_06:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mWindValues:[I

    .line 48
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    .line 19
    return-void
.end method

.method private updateTempValue(I)V
    .locals 6
    .param p1, "temp"    # I

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    const-string v1, "LO"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    const-string v1, "HI"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_1
    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    const/16 v0, 0x2d

    if-ge p1, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    const-string v1, "%.1f\u00b0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0xb

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateWindMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 183
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateWindValue(I)V
    .locals 3
    .param p1, "wind"    # I

    .prologue
    .line 171
    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-gt p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvWindValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_wind_unit:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mWindValues:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvWindValue:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_auto_wind:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected InitUI()V
    .locals 14

    .prologue
    .line 61
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->isAcJump:Z

    .line 63
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 64
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_bg02:I

    invoke-virtual {v0, v2}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 66
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x50

    const/16 v3, 0xad

    const/16 v4, 0x28

    const/16 v5, 0x56

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 67
    .local v1, "frontSeat":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x192

    const/16 v3, 0x4a

    const/16 v4, 0xdd

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x174

    const/16 v3, 0xa5

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addText(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvWindValue:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x35a

    const/16 v3, 0x15

    const/16 v4, 0x6e

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v9

    .line 70
    .local v9, "rearSeat":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x35e

    const/16 v3, 0x9e

    const/16 v4, 0x6e

    const/16 v5, 0x4b

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v2, Lcom/ts/MainUI/R$string;->can_gl8_2017_front_seat:I

    const/16 v3, 0x11

    const/4 v4, -0x1

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    sget v3, Lcom/ts/MainUI/R$string;->can_gl8_2017_rear_seat_auto:I

    const/16 v4, 0x11

    const/16 v5, 0x14

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    const/4 v3, -0x1

    const-string v4, "#06ebf9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setColorUpDnSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvWindValue:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x12

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 79
    sget v4, Lcom/ts/MainUI/R$string;->can_gl8_2017_rear_seat:I

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x14

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvTemp:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, -0x1

    const/16 v7, 0x1e

    invoke-virtual/range {v2 .. v7}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    .line 82
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x177

    const/16 v3, 0xb2

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_fan_00:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mIvWindIcon:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0xa

    const/16 v3, 0xad

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v8

    .line 85
    .local v8, "backFront":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0xfc

    const/16 v3, 0xa8

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v12

    .line 86
    .local v12, "windDecrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x29f

    const/16 v3, 0xa8

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v13

    .line 87
    .local v13, "windIncrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x35a

    const/16 v3, 0x44

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v11

    .line 88
    .local v11, "tempIncrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x35a

    const/16 v3, 0x126

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v10

    .line 89
    .local v10, "tempDecrease":Lcom/ts/other/ParamButton;
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x10a

    const/16 v3, 0x1bd

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    .line 90
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x1c2

    const/16 v3, 0x1bd

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    .line 91
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x277

    const/16 v3, 0x1bd

    invoke-virtual {v0, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_qz_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_qz_dn:I

    invoke-virtual {v0, v8, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 96
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_next_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_next_up:I

    invoke-virtual {v0, v13, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v0, v13, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 99
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_prv_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_prv_up:I

    invoke-virtual {v0, v12, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v0, v12, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 102
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_sh_up:I

    invoke-virtual {v0, v11, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 103
    const/4 v2, 0x3

    invoke-virtual {v0, v11, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 105
    sget v2, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon_xia_up:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 106
    const/4 v2, 0x4

    invoke-virtual {v0, v10, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon01_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon01_dn:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadMode:Lcom/ts/other/ParamButton;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon02_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon02_dn:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnHeadFootMode:Lcom/ts/other/ParamButton;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon03_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_gl18_ac_icon03_dn:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mBtnFootMode:Lcom/ts/other/ParamButton;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 117
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetACSet(Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    .line 138
    invoke-static {}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->GetTickCount()J

    move-result-wide v0

    sput-wide v0, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 140
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HQWD:I

    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->updateTempValue(I)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HQFS:I

    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->updateWindValue(I)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->SFMS:I

    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->updateWindMode(I)V

    .line 144
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HQFS:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mAcSet:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->SFMS:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->mTvRearSeatState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 6

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->ResetData(Z)V

    .line 123
    invoke-static {}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 124
    iget-boolean v0, p0, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->isAcJump:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/ts/can/gm/sb/CanSBGL8RearACActivity;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const-class v1, Lcom/ts/can/gm/sb/CanSBGL8ACActivity;

    invoke-static {v1}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
