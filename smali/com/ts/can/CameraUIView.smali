.class public Lcom/ts/can/CameraUIView;
.super Landroid/view/View;
.source "CameraUIView.java"


# instance fields
.field private isCanTurnable:Z

.field private mCount:I

.field private mLeftControlPoint:Landroid/graphics/PointF;

.field private mLeftFixPoint:Landroid/graphics/PointF;

.field private mLeftPoint1:Landroid/graphics/PointF;

.field private mLeftPoint2:Landroid/graphics/PointF;

.field private mLeftPoints:[Landroid/graphics/PointF;

.field private mLeftTopPoint:Landroid/graphics/PointF;

.field private mMidPoints:[Landroid/graphics/PointF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightControlPoint:Landroid/graphics/PointF;

.field private mRightFixPoint:Landroid/graphics/PointF;

.field private mRightPoint1:Landroid/graphics/PointF;

.field private mRightPoint2:Landroid/graphics/PointF;

.field private mRightPoints:[Landroid/graphics/PointF;

.field private mRightTopPoint:Landroid/graphics/PointF;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ts/can/CameraUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ts/can/CameraUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const v6, 0x43a88000    # 337.0f

    const/4 v5, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/ts/can/CameraUIView;->mStrokeWidth:F

    .line 19
    const/16 v0, 0x17

    iput v0, p0, Lcom/ts/can/CameraUIView;->mCount:I

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x43fd0000    # 506.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftFixPoint:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x44770000    # 988.0f

    const/high16 v2, 0x43fd0000    # 506.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightFixPoint:Landroid/graphics/PointF;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 27
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43cc0000    # 408.0f

    const/high16 v3, 0x43700000    # 240.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x4419c000    # 615.0f

    const/high16 v3, 0x43700000    # 240.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    .line 30
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43b40000    # 360.0f

    const v3, 0x43888000    # 273.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x44250000    # 660.0f

    const v3, 0x43888000    # 273.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    .line 33
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x437a0000    # 250.0f

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44408000    # 770.0f

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x43988000    # 305.0f

    const v4, 0x439b8000    # 311.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x4432c000    # 715.0f

    const v4, 0x439b8000    # 311.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 41
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x42f60000    # 123.0f

    const/high16 v3, 0x438a0000    # 276.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43920000    # 292.0f

    const/high16 v3, 0x43720000    # 242.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    .line 44
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43250000    # 165.0f

    invoke-direct {v1, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x43f28000    # 485.0f

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    .line 47
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x43dc0000    # 440.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44298000    # 678.0f

    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x438c0000    # 280.0f

    const v4, 0x43ac8000    # 345.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x442a0000    # 680.0f

    const v4, 0x43938000    # 295.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoints:[Landroid/graphics/PointF;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 54
    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x44398000    # 742.0f

    const/high16 v3, 0x43720000    # 242.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x44614000    # 901.0f

    const/high16 v3, 0x438a0000    # 276.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    .line 57
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x440d0000    # 564.0f

    const v3, 0x43898000    # 275.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x44508000    # 834.0f

    invoke-direct {v1, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    .line 60
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x43b70000    # 366.0f

    const v4, 0x43a78000    # 335.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44668000    # 922.0f

    const v4, 0x43e38000    # 455.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x43ac0000    # 344.0f

    const/high16 v4, 0x43960000    # 300.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 64
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x44390000    # 740.0f

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoints:[Landroid/graphics/PointF;

    .line 78
    iput-boolean v5, p0, Lcom/ts/can/CameraUIView;->isCanTurnable:Z

    .line 91
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->initPaint()V

    .line 93
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->initPoints()V

    .line 94
    return-void
.end method

.method private changeDegree(ZI)V
    .locals 22
    .param p1, "isTurnLeft"    # Z
    .param p2, "index"    # I

    .prologue
    .line 166
    const/4 v11, 0x0

    .line 168
    .local v11, "points":[Landroid/graphics/PointF;
    if-eqz p1, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/can/CameraUIView;->mLeftPoints:[Landroid/graphics/PointF;

    .line 174
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 175
    .local v9, "leftTopPointDx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 177
    .local v10, "leftTopPointDy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x1

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 178
    .local v18, "rightTopPointDx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x1

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 180
    .local v19, "rightTopPointDy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x2

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    .line 181
    .local v5, "leftPoint1Dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x2

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 183
    .local v6, "leftPoint1Dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x3

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v14, v20, v21

    .line 184
    .local v14, "rightPoint1Dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x3

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 186
    .local v15, "rightPoint1Dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x4

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v7, v20, v21

    .line 187
    .local v7, "leftPoint2Dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x4

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v8, v20, v21

    .line 189
    .local v8, "leftPoint2Dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x5

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 190
    .local v16, "rightPoint2Dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x5

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    .line 192
    .local v17, "rightPoint2Dy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x6

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v3, v20, v21

    .line 193
    .local v3, "leftControlPointDx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x6

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v4, v20, v21

    .line 195
    .local v4, "leftControlPointDy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    const/16 v21, 0x7

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 196
    .local v12, "rightControlPointDx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    const/16 v21, 0x7

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 198
    .local v13, "rightControlPointDy":F
    if-eqz p1, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v2, v20, v21

    .line 200
    .local v2, "halfCount":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v2

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    div-float v20, v20, v2

    sub-float v5, v5, v20

    .line 205
    .end local v2    # "halfCount":F
    :goto_1
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v9, v9, v20

    .line 206
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v10, v10, v20

    .line 208
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v18, v18, v20

    .line 209
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    .line 211
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v5, v20

    .line 212
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v6, v20

    .line 214
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 215
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v15, v15, v20

    .line 217
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v7, v20

    .line 218
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v8, v8, v20

    .line 220
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v16, v16, v20

    .line 221
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v17, v17, v20

    .line 223
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v3, v3, v20

    .line 224
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v4, v4, v20

    .line 226
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v12, v12, v20

    .line 227
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v13, v13, v20

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v9

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v10

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v19

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftPoint1:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v5

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftPoint1:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightPoint1:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v14

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightPoint1:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftPoint2:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v7

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftPoint2:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v8

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightPoint2:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v16

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightPoint2:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v17

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftControlPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mLeftControlPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightControlPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v12

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CameraUIView;->mRightControlPoint:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/ts/can/CameraUIView;->invalidate()V

    .line 254
    return-void

    .line 171
    .end local v3    # "leftControlPointDx":F
    .end local v4    # "leftControlPointDy":F
    .end local v5    # "leftPoint1Dx":F
    .end local v6    # "leftPoint1Dy":F
    .end local v7    # "leftPoint2Dx":F
    .end local v8    # "leftPoint2Dy":F
    .end local v9    # "leftTopPointDx":F
    .end local v10    # "leftTopPointDy":F
    .end local v12    # "rightControlPointDx":F
    .end local v13    # "rightControlPointDy":F
    .end local v14    # "rightPoint1Dx":F
    .end local v15    # "rightPoint1Dy":F
    .end local v16    # "rightPoint2Dx":F
    .end local v17    # "rightPoint2Dy":F
    .end local v18    # "rightTopPointDx":F
    .end local v19    # "rightTopPointDy":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/can/CameraUIView;->mRightPoints:[Landroid/graphics/PointF;

    goto/16 :goto_0

    .line 202
    .restart local v3    # "leftControlPointDx":F
    .restart local v4    # "leftControlPointDy":F
    .restart local v5    # "leftPoint1Dx":F
    .restart local v6    # "leftPoint1Dy":F
    .restart local v7    # "leftPoint2Dx":F
    .restart local v8    # "leftPoint2Dy":F
    .restart local v9    # "leftTopPointDx":F
    .restart local v10    # "leftTopPointDy":F
    .restart local v12    # "rightControlPointDx":F
    .restart local v13    # "rightControlPointDy":F
    .restart local v14    # "rightPoint1Dx":F
    .restart local v15    # "rightPoint1Dy":F
    .restart local v16    # "rightPoint2Dx":F
    .restart local v17    # "rightPoint2Dy":F
    .restart local v18    # "rightTopPointDx":F
    .restart local v19    # "rightTopPointDy":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v20, v0

    sub-int v20, v20, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ts/can/CameraUIView;->mCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const v21, 0x40133333    # 2.3f

    mul-float v20, v20, v21

    sub-float v14, v14, v20

    goto/16 :goto_1
.end method

.method private getLeftQuadPath()Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 258
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mLeftFixPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mLeftFixPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mLeftControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mLeftControlPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 260
    iget-object v4, p0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 259
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 261
    return-object v0
.end method

.method private getRightQuadPath()Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 265
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 266
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mRightFixPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mRightFixPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 267
    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mRightControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mRightControlPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 268
    iget-object v3, p0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 267
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 269
    return-object v0
.end method

.method private initPaint()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ts/can/CameraUIView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-void
.end method

.method private initPoints()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    .line 109
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint1:Landroid/graphics/PointF;

    .line 110
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint1:Landroid/graphics/PointF;

    .line 112
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint2:Landroid/graphics/PointF;

    .line 113
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint2:Landroid/graphics/PointF;

    .line 115
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftControlPoint:Landroid/graphics/PointF;

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ts/can/CameraUIView;->mMidPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ts/can/CameraUIView;->mRightControlPoint:Landroid/graphics/PointF;

    .line 117
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftTopPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 126
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightTopPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 125
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint1:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint1:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint1:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 128
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint1:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint2:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mLeftPoint2:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint2:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 130
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mRightPoint2:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 129
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->getLeftQuadPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->getRightQuadPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/CameraUIView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public setCanTurnable(Z)V
    .locals 0
    .param p1, "isCan"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/ts/can/CameraUIView;->isCanTurnable:Z

    .line 162
    return-void
.end method

.method public showCenterLine()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->initPoints()V

    .line 140
    invoke-virtual {p0}, Lcom/ts/can/CameraUIView;->invalidate()V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public turnLeft(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/ts/can/CameraUIView;->isCanTurnable:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->initPoints()V

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ts/can/CameraUIView;->changeDegree(ZI)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public turnRight(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/ts/can/CameraUIView;->isCanTurnable:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/ts/can/CameraUIView;->initPoints()V

    .line 155
    invoke-direct {p0, v1, p1}, Lcom/ts/can/CameraUIView;->changeDegree(ZI)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/ts/can/CameraUIView;->setVisibility(I)V

    .line 158
    :cond_0
    return-void
.end method
