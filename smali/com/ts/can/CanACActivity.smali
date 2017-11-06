.class public Lcom/ts/can/CanACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static AC_SHOW_TIME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanACActivity"

.field public static final TEMP_STYLE_GQCQ:I = 0x1

.field public static final TEMP_STYLE_NORMAL:I


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mAc:Landroid/widget/ImageView;

.field private mAcErrTemp:[Landroid/widget/TextView;

.field private mAcMax:Landroid/widget/ImageView;

.field private mAuto:Landroid/widget/ImageView;

.field private mDual:Landroid/widget/ImageView;

.field private mEco:Landroid/widget/ImageView;

.field private mEnerey:Landroid/widget/TextView;

.field private mForeLight:Landroid/widget/ImageView;

.field private mFrontMax:Landroid/widget/ImageView;

.field private mHeat:Landroid/widget/TextView;

.field private mInCarTemp:Landroid/widget/TextView;

.field private mLastTime:J

.field private mLoop:Landroid/widget/ImageView;

.field private mLtFire:Landroid/widget/ImageView;

.field private mLtHot:[Landroid/widget/ImageView;

.field private mLtTemp:Landroid/widget/TextView;

.field private mLtTempLevel:[Lcom/ts/other/CustomImgView;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPTC:Lcom/ts/other/CustomImgView;

.field private mRearLight:Landroid/widget/ImageView;

.field private mRearLock:Landroid/widget/ImageView;

.field private mRtFire:Landroid/widget/ImageView;

.field private mRtHot:[Landroid/widget/ImageView;

.field private mRtTemp:Landroid/widget/TextView;

.field private mRtTempLevel:[Lcom/ts/other/CustomImgView;

.field private mTempStyle:I

.field private mWindDn:Landroid/widget/ImageView;

.field private mWindDnSmall:[Landroid/widget/ImageView;

.field private mWindFr:Landroid/widget/ImageView;

.field private mWindProgress:Landroid/widget/ProgressBar;

.field private mWindPx:Landroid/widget/ImageView;

.field private mWindPxSmall:[Landroid/widget/ImageView;

.field private mWindUp:Landroid/widget/ImageView;

.field private mWindUpSmall:[Landroid/widget/ImageView;

.field private mWindVal:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xbb8

    sput v0, Lcom/ts/can/CanACActivity;->AC_SHOW_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 47
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    .line 48
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    .line 49
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    .line 53
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    .line 54
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mAcErrTemp:[Landroid/widget/TextView;

    .line 66
    new-array v0, v3, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    .line 67
    new-array v0, v3, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/CanACActivity;->mTempStyle:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/CanACActivity;->mLastTime:J

    .line 24
    return-void
.end method

.method public static showAc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/can/CanACActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 493
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 495
    const/4 v1, 0x1

    .line 498
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected SetTempStyle()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "style":I
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    iput v3, p0, Lcom/ts/can/CanACActivity;->mTempStyle:I

    .line 219
    iget v6, p0, Lcom/ts/can/CanACActivity;->mTempStyle:I

    if-nez v6, :cond_1

    move v1, v4

    .line 220
    .local v1, "bTxtTemp":Z
    :goto_1
    iget v6, p0, Lcom/ts/can/CanACActivity;->mTempStyle:I

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 221
    .local v0, "bLevelTemp":Z
    :goto_2
    iget-object v4, p0, Lcom/ts/can/CanACActivity;->mLtTemp:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/ts/can/CanACActivity;->setViewShow(Landroid/view/View;Z)V

    .line 222
    iget-object v4, p0, Lcom/ts/can/CanACActivity;->mRtTemp:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/ts/can/CanACActivity;->setViewShow(Landroid/view/View;Z)V

    .line 225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    const/4 v4, 0x7

    if-lt v2, v4, :cond_3

    .line 231
    return-void

    .line 208
    .end local v0    # "bLevelTemp":Z
    .end local v1    # "bTxtTemp":Z
    .end local v2    # "i":I
    :pswitch_0
    sget-object v6, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindAutoLevel:I

    if-eqz v6, :cond_0

    .line 210
    const/4 v3, 0x1

    .line 212
    goto :goto_0

    :cond_1
    move v1, v5

    .line 219
    goto :goto_1

    .restart local v1    # "bTxtTemp":Z
    :cond_2
    move v0, v5

    .line 220
    goto :goto_2

    .line 227
    .restart local v0    # "bLevelTemp":Z
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 228
    iget-object v4, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 6

    .prologue
    .line 505
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 506
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/ts/can/CanACActivity;->updateACUI()V

    .line 510
    :cond_0
    invoke-static {}, Lcom/ts/can/CanACActivity;->GetTickCount()J

    move-result-wide v0

    .line 511
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    sget v4, Lcom/ts/can/CanACActivity;->AC_SHOW_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/ts/can/CanACActivity;->finish()V

    .line 514
    const-string v2, "CanACActivity"

    const-string v3, "UserAll Exit Ac"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x420c0000    # 35.0f

    const/16 v6, 0x32

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->setContentView(I)V

    .line 89
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_loop:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mLoop:Landroid/widget/ImageView;

    .line 90
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_eco:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mEco:Landroid/widget/ImageView;

    .line 91
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_dual:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mDual:Landroid/widget/ImageView;

    .line 92
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mAc:Landroid/widget/ImageView;

    .line 93
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_auto:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mAuto:Landroid/widget/ImageView;

    .line 94
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rear_light:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mRearLight:Landroid/widget/ImageView;

    .line 95
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_fore_light:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mForeLight:Landroid/widget/ImageView;

    .line 96
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rear_lock:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mRearLock:Landroid/widget/ImageView;

    .line 97
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_acmax:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mAcMax:Landroid/widget/ImageView;

    .line 98
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_frontmax:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mFrontMax:Landroid/widget/ImageView;

    .line 100
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_ltfire:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mLtFire:Landroid/widget/ImageView;

    .line 101
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot1:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 102
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot2:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 103
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot3:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 105
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rtfire:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mRtFire:Landroid/widget/ImageView;

    .line 106
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot1:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 107
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot2:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 108
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot3:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 110
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_fore:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindFr:Landroid/widget/ImageView;

    .line 111
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindUp:Landroid/widget/ImageView;

    .line 112
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_px:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindPx:Landroid/widget/ImageView;

    .line 113
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_dn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindDn:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_l_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 116
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_r_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 117
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_l_px:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 118
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_r_px:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 119
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_l_dn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 120
    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_r_dn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 122
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lttemp:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mLtTemp:Landroid/widget/TextView;

    .line 123
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rttemp:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mRtTemp:Landroid/widget/TextView;

    .line 124
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_txt:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindVal:Landroid/widget/TextView;

    .line 126
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_progress:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    .line 128
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mEco:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_eco_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_eco_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 129
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mDual:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 130
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mAc:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 131
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRearLight:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 132
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mForeLight:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_wind_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_wind_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRearLock:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rear_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rear_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 135
    const/16 v1, 0x1c

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x4f

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mAcMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_jl_xh_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ac_jl_xh_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 138
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mFrontMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_ac_jl_ty_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_ac_jl_ty_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 139
    const/16 v1, 0x1770

    sput v1, Lcom/ts/can/CanACActivity;->AC_SHOW_TIME:I

    .line 150
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 157
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_layout:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v2, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 158
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x7

    if-lt v0, v1, :cond_4

    .line 169
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x154

    const/16 v3, 0x78

    sget v4, Lcom/ts/MainUI/R$drawable;->can_ac_flg_ptc_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mPTC:Lcom/ts/other/CustomImgView;

    .line 170
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mPTC:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 187
    const/16 v1, 0x62

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e0

    const/16 v3, 0x78

    const/16 v4, 0xf0

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x172

    const/16 v3, 0xf0

    invoke-virtual {v1, v6, v2, v3, v6}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanACActivity;->mEnerey:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mEnerey:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mEnerey:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mEnerey:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    :cond_1
    return-void

    .line 143
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mAcMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 144
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mFrontMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_max_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 145
    const/16 v1, 0xbb8

    sput v1, Lcom/ts/can/CanACActivity;->AC_SHOW_TIME:I

    goto/16 :goto_0

    .line 152
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 153
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/CanACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x18

    add-int/lit8 v3, v3, 0x1a

    const/16 v4, 0x1d4

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 161
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rj_rect_red:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 162
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 164
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanACActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x18

    add-int/lit16 v3, v3, 0x34a

    const/16 v4, 0x1d4

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 165
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rj_rect_red:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 166
    iget-object v1, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 259
    const-string v0, "CanACActivity"

    const-string v1, "-----on New Intent-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 268
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 269
    const-string v0, "CanACActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v0, "CanACActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----Current Activity is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ts/can/CanACActivity;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 239
    invoke-virtual {p0}, Lcom/ts/can/CanACActivity;->SetTempStyle()V

    .line 240
    invoke-virtual {p0}, Lcom/ts/can/CanACActivity;->updateACUI()V

    .line 241
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 242
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 243
    const-string v0, "CanACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v0, 0x1c

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 246
    const-string v0, "CanACActivity"

    const-string v1, "Can.CAN_JIANGLING == CanJni.GetCanFsTp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return-void
.end method

.method protected updateACUI()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 275
    invoke-static {}, Lcom/ts/can/CanACActivity;->GetTickCount()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ts/can/CanACActivity;->mLastTime:J

    .line 277
    sget-object v5, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 279
    const-string v5, "CanACActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PTC = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgPTC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mPTC:Lcom/ts/other/CustomImgView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgPTC:I

    invoke-virtual {v5, v6}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 282
    sget-object v5, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v8, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 283
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgLoopDisable:I

    invoke-static {v5}, Lcom/ts/can/CanACActivity;->int2Bool(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 285
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLoop:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_car_up:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    .line 303
    :goto_0
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mEco:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgEco:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 304
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mDual:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 305
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mAc:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 307
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    packed-switch v5, :pswitch_data_0

    .line 318
    :pswitch_0
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mAuto:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    .line 322
    :goto_1
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRearLight:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 323
    const/16 v5, 0x1c

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v6

    if-eq v5, v6, :cond_0

    const/16 v5, 0x4f

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 325
    :cond_0
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mForeLight:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 374
    :goto_2
    const/16 v5, 0x62

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanFsTp()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 376
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mEnerey:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u80fd\u8017: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nEnergy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgHeat:I

    invoke-static {v5}, Lcom/ts/can/CanACActivity;->int2Bool(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 379
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    const-string v6, "HEAT"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRearLock:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 389
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mAcMax:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 390
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mFrontMax:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgMaxFornt:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 393
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v3, v5, 0x3

    .line 394
    .local v3, "ltHot":I
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v4, v5, 0x3

    .line 395
    .local v4, "rtHot":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-lt v2, v3, :cond_8

    .line 400
    move v2, v3

    :goto_5
    if-lt v2, v10, :cond_9

    .line 405
    const/4 v2, 0x0

    :goto_6
    if-lt v2, v4, :cond_a

    .line 410
    move v2, v4

    :goto_7
    if-lt v2, v10, :cond_b

    .line 415
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtFire:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 416
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtFire:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 418
    const/4 v2, 0x0

    :goto_8
    if-lt v2, v10, :cond_c

    .line 424
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindFr:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 425
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->bDaulAc:I

    if-ne v5, v9, :cond_d

    .line 427
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUp:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 428
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPx:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 429
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDn:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 431
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 432
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 433
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 434
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->bUpWindFlgR:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 435
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->bParallelWindFlgR:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 436
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->bDownWindFlgR:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 451
    :goto_9
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindVal:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 453
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 457
    :try_start_0
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtTemp:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtTemp:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_a
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLeftTemp:I

    and-int/lit8 v0, v5, 0x7

    .line 469
    .local v0, "TempLevel":I
    iget v5, p0, Lcom/ts/can/CanACActivity;->mTempStyle:I

    if-ne v9, v5, :cond_2

    .line 471
    const/4 v2, 0x0

    :goto_b
    if-lt v2, v0, :cond_e

    .line 477
    move v2, v0

    :goto_c
    const/4 v5, 0x7

    if-lt v2, v5, :cond_f

    .line 484
    :cond_2
    return-void

    .line 287
    .end local v0    # "TempLevel":I
    .end local v2    # "i":I
    .end local v3    # "ltHot":I
    .end local v4    # "rtHot":I
    :cond_3
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    invoke-static {v5}, Lcom/ts/can/CanACActivity;->int2Bool(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLoop:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_car04_dn:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v5}, Lcom/ts/can/CanACActivity;->int2Bool(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 295
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLoop:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_car01_dn:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 299
    :cond_5
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLoop:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_car_dn:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 310
    :pswitch_1
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mAuto:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_auto02_dn:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 314
    :pswitch_2
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mAuto:Landroid/widget/ImageView;

    sget v6, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 371
    :cond_6
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mForeLight:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    .line 383
    :cond_7
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mHeat:Landroid/widget/TextView;

    const-string v6, " "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 397
    .restart local v2    # "i":I
    .restart local v3    # "ltHot":I
    .restart local v4    # "rtHot":I
    :cond_8
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 402
    :cond_9
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 407
    :cond_a
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 412
    :cond_b
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 420
    :cond_c
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5, v3}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 421
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 440
    :cond_d
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 441
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 442
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 443
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUpSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 444
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPxSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 445
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDnSmall:[Landroid/widget/ImageView;

    aget-object v5, v5, v9

    invoke-virtual {p0, v5, v8}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 447
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindUp:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 448
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindPx:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 449
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mWindDn:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ts/can/CanACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/CanACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    goto/16 :goto_9

    .line 460
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CanACActivity"

    const-string v6, "set Temp text Exception!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "TempLevel":I
    :cond_e
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 474
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 479
    :cond_f
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mLtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 480
    iget-object v5, p0, Lcom/ts/can/CanACActivity;->mRtTempLevel:[Lcom/ts/other/CustomImgView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
