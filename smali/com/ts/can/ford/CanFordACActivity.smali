.class public Lcom/ts/can/ford/CanFordACActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanFordACActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final AC_SHOW_TIME:I = 0xbb8

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "CanFordACActivity"


# instance fields
.field private mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

.field private mAc:Landroid/widget/ImageView;

.field private mAcMax:Landroid/widget/ImageView;

.field private mAuto:Landroid/widget/ImageView;

.field private mDual:Landroid/widget/ImageView;

.field private mEco:Landroid/widget/ImageView;

.field private mForeLight:Landroid/widget/ImageView;

.field private mForePWR:Lcom/ts/other/CustomImgView;

.field private mFrontMax:Landroid/widget/ImageView;

.field private mLastTime:J

.field private mLoop:Landroid/widget/ImageView;

.field private mLtFire:Landroid/widget/ImageView;

.field private mLtHot:[Landroid/widget/ImageView;

.field private mLtTemp:Landroid/widget/TextView;

.field private mManger:Lcom/ts/other/RelativeLayoutManager;

.field private mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

.field private mRearLight:Landroid/widget/ImageView;

.field private mRearLock:Landroid/widget/ImageView;

.field private mRearPWR:Lcom/ts/other/CustomImgView;

.field private mRearTemp:[Lcom/ts/other/CustomImgView;

.field private mRearWind:[Lcom/ts/other/CustomImgView;

.field private mRtFire:Landroid/widget/ImageView;

.field private mRtHot:[Landroid/widget/ImageView;

.field private mRtTemp:Landroid/widget/TextView;

.field private mWindDn:Landroid/widget/ImageView;

.field private mWindFr:Landroid/widget/ImageView;

.field private mWindProgress:Landroid/widget/ProgressBar;

.field private mWindPx:Landroid/widget/ImageView;

.field private mWindUp:Landroid/widget/ImageView;

.field private mWindVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 49
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    .line 50
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    .line 64
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordReadAC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/ford/CanFordACActivity;->mLastTime:J

    .line 24
    return-void
.end method

.method public static showAc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/can/CanACActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 372
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    const/4 v1, 0x1

    .line 377
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 4

    .prologue
    .line 384
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 385
    sget-object v2, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordACActivity;->updateACUI()V

    .line 389
    :cond_0
    invoke-static {}, Lcom/ts/can/ford/CanFordACActivity;->GetTickCount()J

    move-result-wide v0

    .line 390
    .local v0, "curTick":J
    sget-wide v2, Lcom/ts/can/CanFunc;->mLastACTick:J

    .line 395
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x1d7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_ford_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->setContentView(I)V

    .line 80
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_loop:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mLoop:Landroid/widget/ImageView;

    .line 81
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_eco:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mEco:Landroid/widget/ImageView;

    .line 82
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_dual:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mDual:Landroid/widget/ImageView;

    .line 83
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_ac:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mAc:Landroid/widget/ImageView;

    .line 84
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_auto:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mAuto:Landroid/widget/ImageView;

    .line 85
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rear_light:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLight:Landroid/widget/ImageView;

    .line 86
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_fore_light:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mForeLight:Landroid/widget/ImageView;

    .line 87
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rear_lock:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLock:Landroid/widget/ImageView;

    .line 88
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_acmax:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mAcMax:Landroid/widget/ImageView;

    .line 89
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_frontmax:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mFrontMax:Landroid/widget/ImageView;

    .line 91
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_ltfire:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtFire:Landroid/widget/ImageView;

    .line 92
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot1:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 93
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot2:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 94
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lthot3:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 96
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rtfire:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtFire:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot1:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 98
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot2:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 99
    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rthot3:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 101
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_fore:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindFr:Landroid/widget/ImageView;

    .line 102
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_up:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindUp:Landroid/widget/ImageView;

    .line 103
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_px:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindPx:Landroid/widget/ImageView;

    .line 104
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_dn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindDn:Landroid/widget/ImageView;

    .line 107
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_lttemp:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtTemp:Landroid/widget/TextView;

    .line 108
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_rttemp:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtTemp:Landroid/widget/TextView;

    .line 109
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_txt:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindVal:Landroid/widget/TextView;

    .line 111
    sget v1, Lcom/ts/MainUI/R$id;->can_ac_wind_progress:I

    invoke-virtual {p0, v1}, Lcom/ts/can/ford/CanFordACActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    .line 113
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mEco:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_eco_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_eco_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 114
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mDual:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_dual_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_dual_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 115
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mAc:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_ac_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_ac_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 116
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLight:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_heat_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_heat_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 117
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mForeLight:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_wind_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_wind_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 118
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLock:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rear_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rear_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 119
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mAcMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_acmax_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 120
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mFrontMax:Landroid/widget/ImageView;

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_max_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_max_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_layout_ford_ac:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mManger:Lcom/ts/other/RelativeLayoutManager;

    .line 130
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mManger:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2cb

    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordACActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$dimen;->y_ford_ac_flg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mForePWR:Lcom/ts/other/CustomImgView;

    .line 131
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mForePWR:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_gj_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rj_gj_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 133
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mManger:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x16a

    const/16 v3, 0x1ca

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearPWR:Lcom/ts/other/CustomImgView;

    .line 134
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearPWR:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_gj_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rj_gj_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 137
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 143
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 148
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 126
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->conditioning_rect_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->conditioning_rect_dn:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/ford/CanFordACActivity;->setIvStateDrawable(Landroid/widget/ImageView;II)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mManger:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x18

    add-int/lit8 v3, v3, 0x5f

    invoke-virtual {v2, v3, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 140
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rj_rect_blue:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/ford/CanFordACActivity;->mManger:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x18

    add-int/lit16 v3, v3, 0x30f

    invoke-virtual {v2, v3, v6}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 146
    iget-object v1, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 169
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 170
    const-string v0, "CanFordACActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/lgb/canmodule/Can;->updateAC()Z

    .line 155
    invoke-virtual {p0}, Lcom/ts/can/ford/CanFordACActivity;->updateACUI()V

    .line 156
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 157
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 158
    const-string v0, "CanFordACActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method protected updateACUI()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/16 v9, 0x9

    const/4 v8, 0x0

    .line 176
    invoke-static {}, Lcom/ts/can/ford/CanFordACActivity;->GetTickCount()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLastTime:J

    .line 180
    sget-object v6, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    .line 194
    sget-object v6, Lcom/lgb/canmodule/Can;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iput v8, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->Update:I

    .line 195
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgLoopDisable:I

    invoke-static {v6}, Lcom/ts/can/ford/CanFordACActivity;->int2Bool(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLoop:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_car_up:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    .line 215
    :goto_0
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mEco:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgEco:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 216
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mDual:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDual:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 217
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mAc:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAC:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 219
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nAutoLight:I

    packed-switch v6, :pswitch_data_0

    .line 230
    :pswitch_0
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mAuto:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_auto_up:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    .line 234
    :goto_1
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLight:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLight:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 235
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mForeLight:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDFBL:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 236
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearLock:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgRearLock:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 237
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mAcMax:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgACMax:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 238
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mFrontMax:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgMaxFornt:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvSel(Landroid/widget/ImageView;I)V

    .line 241
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nLtChairHot:I

    and-int/lit8 v2, v6, 0x3

    .line 242
    .local v2, "ltHot":I
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nRtChairHot:I

    and-int/lit8 v5, v6, 0x3

    .line 243
    .local v5, "rtHot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v2, :cond_5

    .line 248
    move v1, v2

    :goto_3
    if-lt v1, v12, :cond_6

    .line 253
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v5, :cond_7

    .line 258
    move v1, v5

    :goto_5
    if-lt v1, v12, :cond_8

    .line 263
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtFire:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 264
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtFire:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v5}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 266
    const/4 v1, 0x0

    :goto_6
    if-lt v1, v12, :cond_9

    .line 272
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindFr:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgForeWindMode:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 273
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindUp:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgUpWind:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 274
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindPx:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgParallelWind:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 275
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindDn:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgDownWind:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 277
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindVal:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindMax:I

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 279
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mWindProgress:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->nWindValue:I

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 283
    :try_start_0
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtTemp:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szLtTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtTemp:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->szRtTemp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_7
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->FordGetRearAC(Lcom/lgb/canmodule/CanDataInfo$FordReadAC;)V

    .line 295
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mForePWR:Lcom/ts/other/CustomImgView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->PWR:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 296
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearPWR:Lcom/ts/other/CustomImgView;

    iget-object v7, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$FordReadAC;->PWR:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->SetSel(I)V

    .line 298
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$FordReadAC;->Wind:I

    and-int/lit8 v4, v6, 0x7

    .line 299
    .local v4, "rearWind":I
    const/4 v1, 0x0

    :goto_8
    if-lt v1, v4, :cond_a

    .line 304
    move v1, v4

    :goto_9
    const/4 v6, 0x7

    if-lt v1, v6, :cond_b

    .line 309
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearAcData:Lcom/lgb/canmodule/CanDataInfo$FordReadAC;

    iget v3, v6, Lcom/lgb/canmodule/CanDataInfo$FordReadAC;->Hot:I

    .line 310
    .local v3, "rearTemp":I
    if-le v3, v9, :cond_0

    .line 312
    const/16 v3, 0x9

    .line 315
    :cond_0
    if-ne v9, v3, :cond_d

    .line 317
    const/4 v1, 0x0

    :goto_a
    if-lt v1, v9, :cond_c

    .line 363
    :cond_1
    return-void

    .line 199
    .end local v1    # "i":I
    .end local v2    # "ltHot":I
    .end local v3    # "rearTemp":I
    .end local v4    # "rearWind":I
    .end local v5    # "rtHot":I
    :cond_2
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgAQS:I

    invoke-static {v6}, Lcom/ts/can/ford/CanFordACActivity;->int2Bool(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLoop:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_car04_dn:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 205
    :cond_3
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mACInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$CAN_ACInfo;->fgInnerLoop:I

    invoke-static {v6}, Lcom/ts/can/ford/CanFordACActivity;->int2Bool(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLoop:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_car01_dn:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 211
    :cond_4
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLoop:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_car_dn:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 222
    :pswitch_1
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mAuto:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_auto02_dn:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 226
    :pswitch_2
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mAuto:Landroid/widget/ImageView;

    sget v7, Lcom/ts/MainUI/R$drawable;->conditioning_auto01_dn:I

    invoke-virtual {p0, v6, v7}, Lcom/ts/can/ford/CanFordACActivity;->setIvDrawable(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    .line 245
    .restart local v1    # "i":I
    .restart local v2    # "ltHot":I
    .restart local v5    # "rtHot":I
    :cond_5
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 250
    :cond_6
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 255
    :cond_7
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 260
    :cond_8
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 268
    :cond_9
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mLtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v2}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 269
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRtHot:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v5}, Lcom/ts/can/ford/CanFordACActivity;->setIvShow(Landroid/widget/ImageView;I)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "CanFordACActivity"

    const-string v7, "set Temp text Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "rearWind":I
    :cond_a
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v11}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 306
    :cond_b
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearWind:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v8}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 319
    .restart local v3    # "rearTemp":I
    :cond_c
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v8}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 324
    :cond_d
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v10

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_white:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 326
    if-gt v3, v10, :cond_10

    .line 328
    const/4 v1, 0x0

    :goto_b
    if-lt v1, v3, :cond_e

    .line 333
    move v1, v3

    :goto_c
    if-lt v1, v10, :cond_f

    .line 338
    const/4 v1, 0x5

    :goto_d
    if-ge v1, v9, :cond_1

    .line 340
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 330
    :cond_e
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 335
    :cond_f
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_blue:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 345
    :cond_10
    const/4 v1, 0x0

    :goto_e
    if-lt v1, v10, :cond_11

    .line 350
    const/4 v1, 0x5

    :goto_f
    if-le v1, v3, :cond_12

    .line 355
    add-int/lit8 v1, v3, 0x1

    :goto_10
    if-ge v1, v9, :cond_1

    .line 357
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 347
    :cond_11
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_gray:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 352
    :cond_12
    iget-object v6, p0, Lcom/ts/can/ford/CanFordACActivity;->mRearTemp:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v1

    sget v7, Lcom/ts/MainUI/R$drawable;->can_rj_rect_red:I

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
