.class public Lcom/ts/can/RadarUIView;
.super Landroid/view/View;
.source "RadarUIView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/RadarUIView$Common;,
        Lcom/ts/can/RadarUIView$Ford;,
        Lcom/ts/can/RadarUIView$Type;,
        Lcom/ts/can/RadarUIView$XT5;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ts$can$RadarUIView$Type:[I


# instance fields
.field private mArcPaint:Landroid/graphics/Paint;

.field private mCenterY:F

.field private mCurrentBmp:Landroid/graphics/Bitmap;

.field private mCurrentRadius:[F

.field private mCurrentStartDegrees:[F

.field private mCurrentSweepDegrees:[F

.field private mDstOutXfermode:Landroid/graphics/Xfermode;

.field private mRadarRadius:[F

.field private mShowBigRadar:Z

.field private mShowRearRadar:Z

.field private mType:Lcom/ts/can/RadarUIView$Type;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ts$can$RadarUIView$Type()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/ts/can/RadarUIView;->$SWITCH_TABLE$com$ts$can$RadarUIView$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ts/can/RadarUIView$Type;->values()[Lcom/ts/can/RadarUIView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    invoke-virtual {v1}, Lcom/ts/can/RadarUIView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->FORD:Lcom/ts/can/RadarUIView$Type;

    invoke-virtual {v1}, Lcom/ts/can/RadarUIView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ts/can/RadarUIView$Type;->XT5:Lcom/ts/can/RadarUIView$Type;

    invoke-virtual {v1}, Lcom/ts/can/RadarUIView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ts/can/RadarUIView;->$SWITCH_TABLE$com$ts$can$RadarUIView$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ts/can/RadarUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ts/can/RadarUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    iput-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    .line 158
    iput-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowBigRadar:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 175
    sget-object v0, Lcom/ts/can/RadarUIView$Type;->COMMON:Lcom/ts/can/RadarUIView$Type;

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mType:Lcom/ts/can/RadarUIView$Type;

    .line 192
    invoke-direct {p0}, Lcom/ts/can/RadarUIView;->Init()V

    .line 193
    return-void
.end method

.method private Init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    .line 197
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mDstOutXfermode:Landroid/graphics/Xfermode;

    .line 202
    return-void
.end method

.method private NegArray([F)[F
    .locals 3
    .param p1, "arrays"    # [F

    .prologue
    .line 339
    array-length v2, p1

    new-array v1, v2, [F

    .line 341
    .local v1, "negArray":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 345
    return-object v1

    .line 342
    :cond_0
    aget v2, p1, v0

    neg-float v2, v2

    aput v2, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRadarBmp()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    .line 353
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 354
    iget-object v3, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 353
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 355
    .local v6, "arcBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v0, "arcCanvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 359
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 361
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/ts/can/RadarUIView;->mDstOutXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 363
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v7, v2, v3

    .line 365
    .local v7, "centerX":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    array-length v2, v2

    if-lt v8, v2, :cond_0

    .line 372
    return-object v6

    .line 366
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    aget v2, v2, v8

    sub-float v2, v7, v2

    sub-float/2addr v2, v10

    iget v3, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    iget-object v4, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    .line 367
    iget-object v4, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    aget v4, v4, v8

    add-float/2addr v4, v7

    add-float/2addr v4, v10

    iget v5, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    iget-object v9, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    aget v9, v9, v8

    add-float/2addr v5, v9

    .line 366
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 369
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    aget v3, v3, v8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ts/can/RadarUIView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 365
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private initDataViaType()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-static {}, Lcom/ts/can/RadarUIView;->$SWITCH_TABLE$com$ts$can$RadarUIView$Type()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/RadarUIView;->mType:Lcom/ts/can/RadarUIView$Type;

    invoke-virtual {v1}, Lcom/ts/can/RadarUIView$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowBigRadar:Z

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 229
    new-array v0, v6, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 230
    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 229
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 232
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mBigStartDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 235
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mBigSweepDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 236
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 237
    const/high16 v0, -0x3caf0000    # -209.0f

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto :goto_0

    .line 240
    :cond_0
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mBigStartDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 241
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mBigSweepDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 242
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 243
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43510000    # 209.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 249
    new-array v0, v6, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 250
    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 249
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 252
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mStartDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 255
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mSweepDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 256
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 257
    const/high16 v0, -0x3d740000    # -70.0f

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 260
    :cond_2
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mStartDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 261
    sget-object v0, Lcom/ts/can/RadarUIView$Common;->mSweepDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 262
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 263
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x428c0000    # 70.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 269
    :pswitch_1
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowBigRadar:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v0, :cond_3

    .line 271
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 272
    new-array v0, v6, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    .line 273
    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 272
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 274
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearStartDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 275
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearSweepDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 276
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBmpIds:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 277
    const/high16 v0, -0x3cab0000    # -213.0f

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 279
    :cond_3
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowBigRadar:Z

    if-eqz v0, :cond_4

    .line 281
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 282
    const/4 v0, 0x6

    new-array v0, v0, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 283
    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    aget v2, v2, v3

    aput v2, v0, v1

    .line 282
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 284
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeStartDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 285
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeSweepDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 286
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBmpIds:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 287
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43220000    # 162.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 289
    :cond_4
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v0, :cond_5

    .line 291
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 292
    new-array v0, v6, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 293
    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 292
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 294
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearStartDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 295
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearSweepDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 296
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBmpIds:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 297
    const/high16 v0, -0x3d640000    # -78.0f

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 301
    :cond_5
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 302
    const/4 v0, 0x6

    new-array v0, v0, [F

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 303
    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v1, v1, v3

    aput v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    aget v2, v2, v3

    aput v2, v0, v1

    .line 302
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 304
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeStartDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 305
    sget-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeSweepDegree:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 306
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ts/can/RadarUIView$Ford;->mBmpIds:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 307
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x428e0000    # 71.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 312
    :pswitch_2
    sget-object v0, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    .line 313
    new-array v0, v6, [F

    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 314
    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v2

    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v4

    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 313
    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    .line 316
    iget-boolean v0, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v0, :cond_6

    .line 317
    sget-object v0, Lcom/ts/can/RadarUIView$XT5;->mStartDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 318
    sget-object v0, Lcom/ts/can/RadarUIView$XT5;->mSweepDegrees:[F

    invoke-direct {p0, v0}, Lcom/ts/can/RadarUIView;->NegArray([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 319
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mBmpIds:[I

    aget v1, v1, v2

    .line 319
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 321
    const/high16 v0, -0x3d740000    # -70.0f

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 323
    :cond_6
    sget-object v0, Lcom/ts/can/RadarUIView$XT5;->mStartDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentStartDegrees:[F

    .line 324
    sget-object v0, Lcom/ts/can/RadarUIView$XT5;->mSweepDegrees:[F

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentSweepDegrees:[F

    .line 325
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 326
    sget-object v1, Lcom/ts/can/RadarUIView$XT5;->mBmpIds:[I

    aget v1, v1, v3

    .line 325
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 327
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x428c0000    # 70.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ts/can/RadarUIView;->mCenterY:F

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public invalidateRadar([III)V
    .locals 7
    .param p1, "radarData"    # [I
    .param p2, "minCount"    # I
    .param p3, "maxCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/ts/can/RadarUIView;->invalidate()V

    .line 429
    :cond_0
    return-void

    .line 395
    :cond_1
    aget v1, p1, v0

    .line 397
    .local v1, "radarIndex":I
    if-ltz v1, :cond_0

    .line 401
    invoke-static {}, Lcom/ts/can/RadarUIView;->$SWITCH_TABLE$com$ts$can$RadarUIView$Type()[I

    move-result-object v3

    iget-object v4, p0, Lcom/ts/can/RadarUIView;->mType:Lcom/ts/can/RadarUIView$Type;

    invoke-virtual {v4}, Lcom/ts/can/RadarUIView$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 418
    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    .line 419
    if-le v1, p2, :cond_2

    move v1, v2

    .line 426
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ts/can/RadarUIView;->mCurrentRadius:[F

    iget-object v4, p0, Lcom/ts/can/RadarUIView;->mRadarRadius:[F

    aget v4, v4, v1

    aput v4, v3, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :pswitch_0
    iget-boolean v3, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    if-eqz v3, :cond_6

    .line 404
    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    .line 405
    if-le v1, p2, :cond_3

    move v1, v2

    .line 406
    :cond_3
    goto :goto_1

    .line 407
    :cond_4
    if-le v1, p3, :cond_5

    move v1, v2

    .line 409
    :cond_5
    goto :goto_1

    .line 410
    :cond_6
    if-eq v0, v5, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 411
    if-le v1, p2, :cond_7

    move v1, v2

    .line 412
    :cond_7
    goto :goto_1

    .line 413
    :cond_8
    if-le v1, p3, :cond_9

    move v1, v2

    .line 416
    :cond_9
    goto :goto_1

    .line 421
    :cond_a
    if-le v1, p3, :cond_b

    move v1, v2

    :cond_b
    goto :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-direct {p0}, Lcom/ts/can/RadarUIView;->getRadarBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 385
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ts/can/RadarUIView;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/RadarUIView;->setMeasuredDimension(II)V

    .line 378
    return-void
.end method

.method public setRadarType(Lcom/ts/can/RadarUIView$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/ts/can/RadarUIView$Type;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/ts/can/RadarUIView;->mType:Lcom/ts/can/RadarUIView$Type;

    .line 209
    return-void
.end method

.method public showRadar(ZZ)V
    .locals 0
    .param p1, "showBigRadar"    # Z
    .param p2, "showRearRadar"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/ts/can/RadarUIView;->mShowBigRadar:Z

    .line 218
    iput-boolean p2, p0, Lcom/ts/can/RadarUIView;->mShowRearRadar:Z

    .line 220
    invoke-direct {p0}, Lcom/ts/can/RadarUIView;->initDataViaType()V

    .line 221
    return-void
.end method
