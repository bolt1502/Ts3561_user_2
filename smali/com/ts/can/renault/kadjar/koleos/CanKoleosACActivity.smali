.class public Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;
.super Lcom/ts/can/CanCommonACActivity;
.source "CanKoleosACActivity.java"


# static fields
.field private static final MODE_FAST:I = 0x17

.field private static final MODE_FRONT_WIN:I = 0x15

.field private static final MODE_SOFT:I = 0x16

.field private static final STATUS_AUTO_LOOP:I = 0x18

.field private static mModeArrays:[I


# instance fields
.field private cmd:I

.field private mBtnAutoLoop:Lcom/ts/other/ParamButton;

.field private mBtnEco:Lcom/ts/other/ParamButton;

.field private mBtnFast:Lcom/ts/other/ParamButton;

.field private mBtnSoft:Lcom/ts/other/ParamButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 20
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_up:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon01_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 21
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_up:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon03_dn:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 22
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon05_up:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_icon05_dn:I

    aput v2, v0, v1

    .line 19
    sput-object v0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mModeArrays:[I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanCommonACActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitACButtons()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->InitClickableStatusButtons(Z)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->InitTempButtons(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->InitWindButtons(Z)V

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->InitModeButtons(ZZ)V

    .line 37
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAcMax:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 38
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnMode:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 39
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAcToggle:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->showGoneView(Landroid/view/View;Z)V

    .line 41
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x289

    const/16 v2, 0x18e

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAutoLoop:Lcom/ts/other/ParamButton;

    .line 42
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnEco:Lcom/ts/other/ParamButton;

    .line 43
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x140

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnSoft:Lcom/ts/other/ParamButton;

    .line 44
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v1, 0x1c2

    invoke-virtual {v0, v1, v3}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFast:Lcom/ts/other/ParamButton;

    .line 46
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnEco:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_eco_01_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_eco_01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnSoft:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_soft_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_soft_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFast:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_fast_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_fast_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAutoLoop:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rh7_autoloop_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rh7_autoloop_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnSoft:Lcom/ts/other/ParamButton;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFast:Lcom/ts/other/ParamButton;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAutoLoop:Lcom/ts/other/ParamButton;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 54
    return-void
.end method

.method protected InitModeButtons(ZZ)V
    .locals 6
    .param p1, "isTouchable"    # Z
    .param p2, "isClickable"    # Z

    .prologue
    .line 58
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ts/other/ParamButton;

    iput-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 72
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    const/16 v3, 0x131

    mul-int/lit8 v4, v0, 0x64

    add-int/lit8 v4, v4, 0x6c

    invoke-virtual {v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    sget-object v3, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mModeArrays:[I

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mModeArrays:[I

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v1, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;

    .line 60
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mContainer:Lcom/ts/canview/RelativeLayoutContainer;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v1, v2, v3, p0}, Lcom/ts/canview/RelativeLayoutContainer;->setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;

    goto :goto_1

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setClickable(Z)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    .local v1, "id":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 111
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 113
    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1, v3}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 189
    iget v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->KoleosAcSet(II)V

    .line 197
    :cond_0
    :goto_1
    return v3

    .line 116
    :pswitch_1
    iput v3, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 120
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 124
    :pswitch_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 128
    :pswitch_4
    const/4 v2, 0x6

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 132
    :pswitch_5
    const/16 v2, 0x15

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 136
    :pswitch_6
    const/16 v2, 0x16

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 140
    :pswitch_7
    const/16 v2, 0x17

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 144
    :pswitch_8
    const/16 v2, 0xb

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 148
    :pswitch_9
    const/16 v2, 0xc

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 152
    :pswitch_a
    const/16 v2, 0xd

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 156
    :pswitch_b
    const/16 v2, 0xe

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 160
    :pswitch_c
    const/16 v2, 0xf

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 164
    :pswitch_d
    const/16 v2, 0x10

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 168
    :pswitch_e
    const/4 v2, 0x7

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 172
    :pswitch_f
    const/16 v2, 0x9

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 176
    :pswitch_10
    const/16 v2, 0x18

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 180
    :pswitch_11
    const/16 v2, 0x19

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 184
    :pswitch_12
    const/16 v2, 0x1a

    iput v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    goto :goto_0

    .line 191
    :cond_1
    if-ne v0, v3, :cond_0

    .line 193
    invoke-virtual {p0, p1, v4}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 194
    iget v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->cmd:I

    invoke-static {v2, v4}, Lcom/lgb/canmodule/CanJni;->KoleosAcSet(II)V

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_6
    .end packed-switch
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

    .line 76
    iget-object v3, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    .line 80
    invoke-static {p1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p3}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 88
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->isForeWindMode:Z

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFront:Lcom/ts/other/ParamButton;

    invoke-virtual {p0, v1, p4}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnEco:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgEco:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 95
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnSoft:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAcErr1:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 96
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnFast:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAcErr2:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 98
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnAutoLoop:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;I)V

    .line 99
    return-void

    .line 76
    :cond_2
    aget-object v0, v3, v1

    .line 77
    .local v0, "btnMode":Lcom/ts/other/ParamButton;
    invoke-virtual {p0, v0, v2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "btnMode":Lcom/ts/other/ParamButton;
    :cond_3
    invoke-static {p1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p3}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    .line 84
    :cond_4
    invoke-static {p1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mAcInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-static {v1}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->mBtnModeArrays:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/ts/can/renault/kadjar/koleos/CanKoleosACActivity;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1
.end method
