.class public abstract Lcom/ts/can/CanCommonACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanCommonACActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static AC_SHOW_TIME:J = 0x0L

.field protected static final AC_TOGGLE:I = 0x12

.field private static final ID:I = -0x1

.field protected static final LT_TEMP_DECREASE:I = 0x1

.field protected static final LT_TEMP_INCREASE:I = 0x0

.field protected static final MODE:I = 0x13

.field protected static final MODE_FOOT:I = 0x8

.field protected static final MODE_FOOT_FRONT:I = 0x9

.field protected static final MODE_HEAD:I = 0x6

.field protected static final MODE_HEAD_FOOT:I = 0x7

.field protected static final RT_TEMP_DECREASE:I = 0x3

.field protected static final RT_TEMP_INCREASE:I = 0x2

.field protected static final STATUS_AC:I = 0xa

.field protected static final STATUS_AC_MAX:I = 0x11

.field protected static final STATUS_AUTO:I = 0xd

.field protected static final STATUS_DUAL:I = 0xe

.field protected static final STATUS_FRONT:I = 0xf

.field protected static final STATUS_LOOPER_INNER:I = 0xb

.field protected static final STATUS_LOOPER_OUTTER:I = 0xc

.field protected static final STATUS_REAR:I = 0x10

.field protected static final WIND_DECREASE:I = 0x5

.field protected static final WIND_INCREASE:I = 0x4

.field protected static mModeArrays:[I

.field protected static mWindArrays:[I


# instance fields
.field private isACJump:Z

.field protected isForeWindMode:Z

.field protected mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field protected mBtnAc:Lcom/ts/other/ParamButton;

.field protected mBtnAcMax:Lcom/ts/other/ParamButton;

.field protected mBtnAcToggle:Lcom/ts/other/ParamButton;

.field protected mBtnAuto:Lcom/ts/other/ParamButton;

.field protected mBtnDual:Lcom/ts/other/ParamButton;

.field protected mBtnFront:Lcom/ts/other/ParamButton;

.field protected mBtnLooperInner:Lcom/ts/other/ParamButton;

.field protected mBtnLooperOutter:Lcom/ts/other/ParamButton;

.field protected mBtnMode:Lcom/ts/other/ParamButton;

.field protected mBtnModeArrays:[Lcom/ts/other/ParamButton;

.field protected mBtnRear:Lcom/ts/other/ParamButton;

.field protected mContainer:Lcom/ts/canview/RelativeLayoutContainer;

.field protected mIvIon:Landroid/widget/ImageView;

.field protected mIvWinds:[Landroid/widget/ImageView;

.field protected mLeftTempDecrease:Lcom/ts/other/ParamButton;

.field protected mLeftTempIncrease:Lcom/ts/other/ParamButton;

.field protected mRightTempDecrease:Lcom/ts/other/ParamButton;

.field protected mRightTempIncrease:Lcom/ts/other/ParamButton;

.field protected mTvLeftTemp:Landroid/widget/TextView;

.field protected mTvRightTemp:Landroid/widget/TextView;

.field protected mWindDecrease:Lcom/ts/other/ParamButton;

.field protected mWindIncrease:Lcom/ts/other/ParamButton;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal01_dn:I

    aput v1, v0, v3

    .line 50
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal02_dn:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal03_dn:I

    aput v1, v0, v5

    .line 51
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal04_dn:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_signal05_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal07_dn:I

    aput v2, v0, v1

    .line 49
    sput-object v0, Lcom/ts/can/CanCommonACActivity;->mWindArrays:[I

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 62
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    aput v1, v0, v4

    .line 63
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_up:I

    aput v1, v0, v5

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon02_dn:I

    aput v1, v0, v6

    .line 64
    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 65
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon04_dn:I

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/ts/can/CanCommonACActivity;->mModeArrays:[I

    .line 86
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/ts/can/CanCommonACActivity;->AC_SHOW_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/can/CanCommonACActivity;->isACJump:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    return v0
.end method

.method protected abstract InitACButtons()V
.end method

.method protected InitClickableStatusButtons(Z)V
    .locals 7
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x2f5

    const/16 v2, 0x289

    .line 215
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 216
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    .line 217
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xac

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 218
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xac

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    .line 219
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x11d

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    .line 220
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x11d

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 221
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x18e

    invoke-virtual {v0, v2, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    .line 222
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x18e

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    .line 223
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1ce

    const/16 v2, 0x1aa

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 225
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_auto_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_dual_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_window02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_max_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_max_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v4, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 256
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v4, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_0
.end method

.method protected InitModeButtons(ZZ)V
    .locals 6
    .param p1, "isTouchable"    # Z
    .param p2, "isClickable"    # Z

    .prologue
    .line 192
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 208
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    iget-object v3, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v4, 0x131

    mul-int/lit8 v5, v1, 0x50

    add-int/lit8 v5, v5, 0x6c

    invoke-virtual {v3, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v3

    aput-object v3, v2, v1

    .line 197
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v0, v2, v1

    .line 198
    .local v0, "btnMode":Lcom/ts/other/ParamButton;
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget-object v3, Lcom/ts/can/CanCommonACActivity;->mModeArrays:[I

    mul-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/ts/can/CanCommonACActivity;->mModeArrays:[I

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {v2, v0, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    if-eqz p2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {v2, v0, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_1

    .line 205
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setClickable(Z)V

    goto :goto_1
.end method

.method protected InitStatusButtons(Z)V
    .locals 7
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x289

    const/16 v2, 0x14

    .line 262
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    .line 263
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    .line 264
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    .line 265
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x244

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    .line 266
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2a8

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    .line 268
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x6e

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    .line 269
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2f5

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    .line 270
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xde

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    .line 271
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x2f5

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    .line 272
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x156

    invoke-virtual {v0, v3, v1}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    .line 274
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ac_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_wxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_nxh_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_mode_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_del_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_del_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_auto02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_up:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_wind_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_wind_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v4, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v4, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_0
.end method

.method protected InitTempButtons(Z)V
    .locals 10
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v3, 0x11

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x32

    const/16 v4, 0x75

    invoke-virtual {v0, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    .line 133
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x32

    const/16 v4, 0x13a

    invoke-virtual {v0, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    .line 134
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x370

    const/16 v4, 0x75

    invoke-virtual {v0, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempIncrease:Lcom/ts/other/ParamButton;

    .line 135
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x370

    const/16 v4, 0x13a

    invoke-virtual {v0, v1, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempDecrease:Lcom/ts/other/ParamButton;

    .line 137
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x35

    const/16 v4, 0xe4

    const/16 v5, 0x5c

    const/16 v6, 0x3d

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x373

    const/16 v4, 0xe4

    const/16 v5, 0x5c

    const/16 v6, 0x3d

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mTvRightTemp:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempIncrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_jia_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempDecrease:Lcom/ts/other/ParamButton;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rh7_jian_dn:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvRightTemp:Landroid/widget/TextView;

    const-string v4, "#08D2D3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v7, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v8, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v9, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mLeftTempDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v7, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v8, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mRightTempDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1, v9, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 107
    invoke-static {p0}, Lcom/ts/can/CanFunc;->IsCanActivityJumped(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/can/CanCommonACActivity;->isACJump:Z

    .line 109
    new-instance v0, Lcom/ts/canview/RelativeLayoutContainer;

    invoke-direct {v0, p0}, Lcom/ts/canview/RelativeLayoutContainer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    .line 110
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_rh7_bg_01:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/RelativeLayoutContainer;->setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;

    .line 112
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x136

    const/16 v2, 0x1b8

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_ion:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mIvIon:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mIvIon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/CanCommonACActivity;->InitACButtons()V

    .line 116
    return-void
.end method

.method protected InitWindButtons(Z)V
    .locals 8
    .param p1, "isTouchable"    # Z

    .prologue
    const/16 v7, 0xe4

    const/16 v4, 0xbf

    const/16 v3, 0xbc

    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 165
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x75

    invoke-virtual {v1, v3, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    .line 166
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v2, 0x13a

    invoke-virtual {v1, v3, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    .line 167
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_signal_up:I

    invoke-virtual {v1, v4, v7, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    .line 169
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fsb_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rh7_fss_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v2, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 179
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v2, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 184
    :goto_1
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    sget-object v3, Lcom/ts/can/CanCommonACActivity;->mWindArrays:[I

    aget v3, v3, v0

    invoke-virtual {v2, v4, v7, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(III)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindIncrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v2, v5, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 182
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mWindDecrease:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v2, v6, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_1
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 430
    return-void
.end method

.method public UserAll()V
    .locals 6

    .prologue
    .line 415
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 416
    sget-object v0, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/ts/can/CanCommonACActivity;->updateACUI()V

    .line 420
    :cond_0
    invoke-static {}, Lcom/ts/can/CanCommonACActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget-wide v4, Lcom/ts/can/CanCommonACActivity;->AC_SHOW_TIME:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 421
    iget-boolean v0, p0, Lcom/ts/can/CanCommonACActivity;->isACJump:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/ts/can/CanCommonACActivity;->finish()V

    .line 425
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/ts/can/CanCommonActivity;->onResume()V

    .line 304
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 306
    invoke-virtual {p0}, Lcom/ts/can/CanCommonACActivity;->updateACUI()V

    .line 307
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected setForeWindMode(Z)V
    .locals 0
    .param p1, "isForeWindMode"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/ts/can/CanCommonACActivity;->isForeWindMode:Z

    .line 369
    return-void
.end method

.method protected setWindMode(IIII)V
    .locals 6
    .param p1, "fgParallel"    # I
    .param p2, "fgDown"    # I
    .param p3, "fgForeWind"    # I
    .param p4, "fgDFBL"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 372
    iget-object v3, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_3

    .line 376
    iget-boolean v1, p0, Lcom/ts/can/CanCommonACActivity;->isForeWindMode:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 380
    :cond_0
    invoke-static {p1}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p3}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 394
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/ts/can/CanCommonACActivity;->isForeWindMode:Z

    if-nez v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, p4}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 399
    :cond_2
    return-void

    .line 372
    :cond_3
    aget-object v0, v3, v1

    .line 373
    .local v0, "btnMode":Lcom/ts/other/ParamButton;
    invoke-virtual {p0, v0, v2}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "btnMode":Lcom/ts/other/ParamButton;
    :cond_4
    invoke-static {p1}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p3}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 383
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    .line 384
    :cond_5
    invoke-static {p1}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p3}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 385
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    .line 386
    :cond_6
    invoke-static {p1}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p3}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    .line 388
    :cond_7
    invoke-static {p1}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-boolean v1, p0, Lcom/ts/can/CanCommonACActivity;->isForeWindMode:Z

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto/16 :goto_1
.end method

.method protected setWindValue(I)V
    .locals 6
    .param p1, "wind"    # I

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v4, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_1

    .line 411
    return-void

    .line 402
    .end local v0    # "i":I
    :cond_0
    aget-object v1, v4, v2

    .line 403
    .local v1, "windIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, v1, v3}, Lcom/ts/can/CanCommonACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "windIcon":Landroid/widget/ImageView;
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanCommonACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected updateACUI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 310
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 311
    sget-object v1, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 313
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvLeftTemp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvRightTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mTvRightTemp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    if-nez v1, :cond_b

    .line 323
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 330
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAc:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnDual:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_6

    .line 343
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnRear:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 346
    :cond_6
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_8

    .line 351
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnAuto:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 354
    :cond_8
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mIvWinds:[Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanCommonACActivity;->setWindValue(I)V

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    if-eqz v0, :cond_a

    .line 359
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    iget-object v3, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/CanCommonACActivity;->setWindMode(IIII)V

    .line 361
    :cond_a
    return-void

    .line 325
    :cond_b
    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperOutter:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v2}, Lcom/ts/can/CanCommonACActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 326
    iget-object v0, p0, Lcom/ts/can/CanCommonACActivity;->mBtnLooperInner:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/CanCommonACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanCommonACActivity;->setViewSelected(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 325
    :cond_c
    const/4 v0, 0x1

    goto :goto_1
.end method
