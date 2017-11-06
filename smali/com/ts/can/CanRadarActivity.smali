.class public Lcom/ts/can/CanRadarActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRadarActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final RADAR_TIME_DELAY:I = 0xfa0

.field private static final RADAR_TIME_OUT:I = 0xbb8

.field protected static final TAG:Ljava/lang/String; = "CanRadarActivity"

.field public static mForeLeftMax:I

.field public static mForeMidLtMax:I

.field public static mForeMidRtMax:I

.field public static mForeRightMax:I

.field public static mRearLeftMax:I

.field public static mRearMidLtMax:I

.field public static mRearMidRtMax:I

.field public static mRearRightMax:I

.field private static mbRadarWin:Z


# instance fields
.field private mBigCarPaint:Lcom/ts/other/CustomImgView$onPaint;

.field private mBigForeRadar:Lcom/ts/can/RadarUIView;

.field private mBigRadarLayout:Landroid/widget/LinearLayout;

.field private mBigRearRadar:Lcom/ts/can/RadarUIView;

.field private mOffsetY:I

.field private mRightForeRadar:Lcom/ts/can/RadarUIView;

.field private mRightRearRadar:Lcom/ts/can/RadarUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanRadarActivity;->mbRadarWin:Z

    .line 42
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeLeftMax:I

    .line 43
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeMidLtMax:I

    .line 44
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeMidRtMax:I

    .line 45
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeRightMax:I

    .line 47
    sput v1, Lcom/ts/can/CanRadarActivity;->mRearLeftMax:I

    .line 48
    sput v1, Lcom/ts/can/CanRadarActivity;->mRearMidLtMax:I

    .line 49
    sput v1, Lcom/ts/can/CanRadarActivity;->mRearMidRtMax:I

    .line 50
    sput v1, Lcom/ts/can/CanRadarActivity;->mRearRightMax:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    .line 106
    new-instance v0, Lcom/ts/can/CanRadarActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/CanRadarActivity$1;-><init>(Lcom/ts/can/CanRadarActivity;)V

    iput-object v0, p0, Lcom/ts/can/CanRadarActivity;->mBigCarPaint:Lcom/ts/other/CustomImgView$onPaint;

    .line 24
    return-void
.end method

.method public static InitRadarMax(I)V
    .locals 3
    .param p0, "canId"    # I

    .prologue
    const/16 v1, 0x8

    const/16 v0, 0xa

    const/4 v2, 0x4

    .line 266
    sparse-switch p0, :sswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 269
    :sswitch_0
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeLeftMax:I

    .line 270
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeMidLtMax:I

    .line 271
    sput v1, Lcom/ts/can/CanRadarActivity;->mForeMidRtMax:I

    .line 272
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeRightMax:I

    .line 273
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearLeftMax:I

    .line 274
    sput v0, Lcom/ts/can/CanRadarActivity;->mRearMidLtMax:I

    .line 275
    sput v0, Lcom/ts/can/CanRadarActivity;->mRearMidRtMax:I

    .line 276
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearRightMax:I

    goto :goto_0

    .line 280
    :sswitch_1
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeLeftMax:I

    .line 281
    sput v0, Lcom/ts/can/CanRadarActivity;->mForeMidLtMax:I

    .line 282
    sput v0, Lcom/ts/can/CanRadarActivity;->mForeMidRtMax:I

    .line 283
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeRightMax:I

    .line 284
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearLeftMax:I

    .line 285
    sput v0, Lcom/ts/can/CanRadarActivity;->mRearMidLtMax:I

    .line 286
    sput v0, Lcom/ts/can/CanRadarActivity;->mRearMidRtMax:I

    .line 287
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearRightMax:I

    goto :goto_0

    .line 291
    :sswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 293
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeLeftMax:I

    .line 294
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeMidLtMax:I

    .line 295
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeMidRtMax:I

    .line 296
    sput v2, Lcom/ts/can/CanRadarActivity;->mForeRightMax:I

    .line 297
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearLeftMax:I

    .line 298
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearMidLtMax:I

    .line 299
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearMidRtMax:I

    .line 300
    sput v2, Lcom/ts/can/CanRadarActivity;->mRearRightMax:I

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x58 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method public static IsRadarWin()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/ts/can/CanRadarActivity;->mbRadarWin:Z

    return v0
.end method

.method private getOffsetY()I
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "offsetY":I
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetReverse()I

    move-result v1

    invoke-static {v1}, Lcom/ts/can/CanRadarActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/16 v0, -0x23a

    .line 134
    :goto_0
    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static invalidateCommonRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V
    .locals 11
    .param p0, "foreRadar"    # Lcom/ts/can/RadarUIView;
    .param p1, "rearRadar"    # Lcom/ts/can/RadarUIView;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    sget-object v1, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    .line 193
    .local v1, "mForeRadar":Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;
    sget-object v2, Lcom/lgb/canmodule/Can;->mRadarRearInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    .line 195
    .local v2, "mRearRadar":Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->isForeRadarValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    new-array v0, v10, [I

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nLeftDis:I

    aput v4, v0, v6

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidLtDis:I

    aput v4, v0, v7

    .line 197
    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidRtDis:I

    aput v4, v0, v8

    iget v4, v1, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nRightDis:I

    aput v4, v0, v9

    .line 198
    .local v0, "foreRadarData":[I
    sget v4, Lcom/ts/can/CanRadarActivity;->mForeLeftMax:I

    sget v5, Lcom/ts/can/CanRadarActivity;->mForeMidLtMax:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/ts/can/RadarUIView;->invalidateRadar([III)V

    .line 201
    .end local v0    # "foreRadarData":[I
    :cond_0
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->isRearRadarValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    new-array v3, v10, [I

    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nLeftDis:I

    aput v4, v3, v6

    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidLtDis:I

    aput v4, v3, v7

    .line 203
    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidRtDis:I

    aput v4, v3, v8

    iget v4, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nRightDis:I

    aput v4, v3, v9

    .line 204
    .local v3, "rearRadarData":[I
    sget v4, Lcom/ts/can/CanRadarActivity;->mRearLeftMax:I

    sget v5, Lcom/ts/can/CanRadarActivity;->mRearMidLtMax:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/ts/can/RadarUIView;->invalidateRadar([III)V

    .line 206
    .end local v3    # "rearRadarData":[I
    :cond_1
    return-void
.end method

.method private static invalidateFordRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V
    .locals 12
    .param p0, "foreRadar"    # Lcom/ts/can/RadarUIView;
    .param p1, "rearRadar"    # Lcom/ts/can/RadarUIView;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 214
    sget-object v2, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    .line 215
    .local v2, "mForeRadar":Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;
    sget-object v3, Lcom/lgb/canmodule/Can;->mRadarRearInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    .line 217
    .local v3, "mRearRadar":Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->isForeRadarValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;-><init>()V

    .line 219
    .local v0, "fore":Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;
    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->FordGetForeRadarEx(Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;)V

    .line 221
    const/4 v5, 0x6

    new-array v1, v5, [I

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;->LtAssist:I

    aput v5, v1, v7

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nLeftDis:I

    aput v5, v1, v8

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidLtDis:I

    aput v5, v1, v9

    .line 222
    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidRtDis:I

    aput v5, v1, v10

    iget v5, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nRightDis:I

    aput v5, v1, v11

    const/4 v5, 0x5

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;->RtAssist:I

    aput v6, v1, v5

    .line 223
    .local v1, "foreRadarData":[I
    const/4 v5, 0x7

    .line 224
    const/16 v6, 0xd

    .line 223
    invoke-virtual {p0, v1, v5, v6}, Lcom/ts/can/RadarUIView;->invalidateRadar([III)V

    .line 227
    .end local v0    # "fore":Lcom/lgb/canmodule/CanDataInfo$FordForeRadarEx;
    .end local v1    # "foreRadarData":[I
    :cond_0
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->isRearRadarValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    new-array v4, v11, [I

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nLeftDis:I

    aput v5, v4, v7

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidLtDis:I

    aput v5, v4, v8

    .line 229
    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nMidRtDis:I

    aput v5, v4, v9

    iget v5, v3, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->nRightDis:I

    aput v5, v4, v10

    .line 230
    .local v4, "rearRadarData":[I
    const/4 v5, 0x7

    const/16 v6, 0x1f

    invoke-virtual {p1, v4, v5, v6}, Lcom/ts/can/RadarUIView;->invalidateRadar([III)V

    .line 232
    .end local v4    # "rearRadarData":[I
    :cond_1
    return-void
.end method

.method public static invalidateRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V
    .locals 1
    .param p0, "foreRadar"    # Lcom/ts/can/RadarUIView;
    .param p1, "rearRadar"    # Lcom/ts/can/RadarUIView;

    .prologue
    .line 176
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-static {p0, p1}, Lcom/ts/can/CanRadarActivity;->invalidateCommonRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V

    .line 184
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-static {p0, p1}, Lcom/ts/can/CanRadarActivity;->invalidateFordRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public static isForeRadarValid()Z
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->GetTickCount()J

    move-result-wide v0

    sget-object v2, Lcom/lgb/canmodule/Can;->mRadarForeInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->dwTick:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRearRadarValid()Z
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->GetTickCount()J

    move-result-wide v0

    sget-object v2, Lcom/lgb/canmodule/Can;->mRadarRearInfo:Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$CAN_RadarInfo;->dwTick:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBigRadarOffsetY(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/ts/can/CanRadarActivity;->mBigRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    add-int/lit8 v1, p1, 0x69

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    iget-object v1, p0, Lcom/ts/can/CanRadarActivity;->mBigRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 2

    .prologue
    .line 251
    sget-boolean v0, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanFunc;->mbRadarUIUpdate:Z

    .line 253
    iget-object v0, p0, Lcom/ts/can/CanRadarActivity;->mBigForeRadar:Lcom/ts/can/RadarUIView;

    iget-object v1, p0, Lcom/ts/can/CanRadarActivity;->mBigRearRadar:Lcom/ts/can/RadarUIView;

    invoke-static {v0, v1}, Lcom/ts/can/CanRadarActivity;->invalidateRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V

    .line 254
    iget-object v0, p0, Lcom/ts/can/CanRadarActivity;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    iget-object v1, p0, Lcom/ts/can/CanRadarActivity;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-static {v0, v1}, Lcom/ts/can/CanRadarActivity;->invalidateRadar(Lcom/ts/can/RadarUIView;Lcom/ts/can/RadarUIView;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/ts/can/CanRadarActivity;->checkReserve()V

    .line 259
    invoke-virtual {p0}, Lcom/ts/can/CanRadarActivity;->isRadarValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/ts/can/CanRadarActivity;->finish()V

    .line 262
    :cond_1
    return-void
.end method

.method protected checkReserve()V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/ts/can/CanRadarActivity;->getOffsetY()I

    move-result v0

    .line 243
    .local v0, "offset":I
    iget v1, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    if-eq v1, v0, :cond_0

    .line 244
    iget v1, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    invoke-static {v0, v1}, Lcom/ts/other/ValCal;->NumApproach(II)I

    move-result v1

    iput v1, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    .line 245
    iget v1, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    invoke-direct {p0, v1}, Lcom/ts/can/CanRadarActivity;->setBigRadarOffsetY(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public isRadarValid()Z
    .locals 6

    .prologue
    .line 235
    invoke-static {}, Lcom/ts/can/CanRadarActivity;->GetTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/can/CanFunc;->mLastRadarTick:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_radar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->setContentView(I)V

    .line 57
    sget v2, Lcom/ts/MainUI/R$id;->big_radar_layout:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigRadarLayout:Landroid/widget/LinearLayout;

    .line 59
    sget v2, Lcom/ts/MainUI/R$id;->right_fore_radar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/can/RadarUIView;

    iput-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    .line 60
    sget v2, Lcom/ts/MainUI/R$id;->right_rear_radar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/can/RadarUIView;

    iput-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    .line 62
    sget v2, Lcom/ts/MainUI/R$id;->big_fore_radar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/can/RadarUIView;

    iput-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigForeRadar:Lcom/ts/can/RadarUIView;

    .line 63
    sget v2, Lcom/ts/MainUI/R$id;->big_rear_radar:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/can/RadarUIView;

    iput-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigRearRadar:Lcom/ts/can/RadarUIView;

    .line 65
    sget v2, Lcom/ts/MainUI/R$id;->big_car:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanRadarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/CustomImgView;

    .line 66
    .local v0, "bigCar":Lcom/ts/other/CustomImgView;
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigCarPaint:Lcom/ts/other/CustomImgView$onPaint;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 70
    const-string v2, "CanRadarActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCanType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 87
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    .line 91
    .local v1, "type":Lcom/ts/can/RadarUIView$Type;
    :goto_0
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v1}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 92
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v1}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 93
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v1}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 94
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v1}, Lcom/ts/can/RadarUIView;->setRadarType(Lcom/ts/can/RadarUIView$Type;)V

    .line 96
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v5, v5}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 97
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mRightRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v5, v6}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 99
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigForeRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v6, v5}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 100
    iget-object v2, p0, Lcom/ts/can/CanRadarActivity;->mBigRearRadar:Lcom/ts/can/RadarUIView;

    invoke-virtual {v2, v6, v6}, Lcom/ts/can/RadarUIView;->showRadar(ZZ)V

    .line 101
    return-void

    .line 75
    .end local v1    # "type":Lcom/ts/can/RadarUIView$Type;
    :sswitch_0
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->FORD:Lcom/ts/can/RadarUIView$Type;

    .line 76
    .restart local v1    # "type":Lcom/ts/can/RadarUIView$Type;
    goto :goto_0

    .line 80
    .end local v1    # "type":Lcom/ts/can/RadarUIView$Type;
    :sswitch_1
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    .line 81
    .restart local v1    # "type":Lcom/ts/can/RadarUIView$Type;
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 82
    sget v3, Lcom/ts/MainUI/R$drawable;->radar_shang_golf:I

    aput v3, v2, v5

    sget v3, Lcom/ts/MainUI/R$drawable;->radar_xia_golf:I

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 83
    sget v4, Lcom/ts/MainUI/R$drawable;->big_radar_shang_golf:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/ts/MainUI/R$drawable;->big_radar_xia_golf:I

    aput v4, v2, v3

    .line 81
    sput-object v2, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xd -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 150
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanRadarActivity;->mbRadarWin:Z

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 140
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/CanRadarActivity;->mbRadarWin:Z

    .line 143
    invoke-direct {p0}, Lcom/ts/can/CanRadarActivity;->getOffsetY()I

    move-result v0

    iput v0, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    .line 144
    iget v0, p0, Lcom/ts/can/CanRadarActivity;->mOffsetY:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanRadarActivity;->setBigRadarOffsetY(I)V

    .line 145
    return-void
.end method
