.class final Lcom/ts/can/RadarUIView$Ford;
.super Ljava/lang/Object;
.source "RadarUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/RadarUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ford"
.end annotation


# static fields
.field public static final mBigForeRadius:[F

.field public static final mBigForeStartDegree:[F

.field public static final mBigForeSweepDegree:[F

.field public static final mBigRearRadius:[F

.field public static final mBigRearStartDegree:[F

.field public static final mBigRearSweepDegree:[F

.field public static final mBmpIds:[I

.field public static final mForeRadius:[F

.field public static final mForeStartDegree:[F

.field public static final mForeSweepDegree:[F

.field public static final mRearRadius:[F

.field public static final mRearStartDegree:[F

.field public static final mRearSweepDegree:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xe

    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 61
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeRadius:[F

    .line 66
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeStartDegree:[F

    .line 71
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mForeSweepDegree:[F

    .line 78
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearRadius:[F

    .line 85
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearStartDegree:[F

    .line 89
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mRearSweepDegree:[F

    .line 96
    new-array v0, v3, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeRadius:[F

    .line 101
    new-array v0, v2, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeStartDegree:[F

    .line 106
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigForeSweepDegree:[F

    .line 113
    new-array v0, v4, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearRadius:[F

    .line 120
    new-array v0, v1, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearStartDegree:[F

    .line 124
    new-array v0, v1, [F

    fill-array-data v0, :array_b

    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBigRearSweepDegree:[F

    .line 131
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 132
    sget v2, Lcom/ts/MainUI/R$drawable;->ford_radar_up:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$drawable;->ford_radar_down:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 133
    sget v2, Lcom/ts/MainUI/R$drawable;->ford_radar_big_up:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$drawable;->ford_radar_big_down:I

    aput v2, v0, v1

    .line 131
    sput-object v0, Lcom/ts/can/RadarUIView$Ford;->mBmpIds:[I

    .line 134
    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x434b0000    # 203.0f
        0x42c00000    # 96.0f
        0x42d40000    # 106.0f
        0x42e40000    # 114.0f
        0x42f30000    # 121.5f
        0x43010000    # 129.0f
        0x43090000    # 137.0f
        0x43110000    # 145.0f
        0x43190000    # 153.0f
        0x43210000    # 161.0f
        0x43290000    # 169.0f
        0x43310000    # 177.0f
        0x43390000    # 185.0f
        0x43410000    # 193.0f
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x43610000    # 225.0f
        0x43718000    # 241.5f
        0x437f8000    # 255.5f
        0x4386c000    # 269.5f
        0x438dc000    # 283.5f
        0x43950000    # 298.0f
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x41880000    # 17.0f
        0x41680000    # 14.5f
        0x41680000    # 14.5f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41880000    # 17.0f
    .end array-data

    .line 78
    :array_3
    .array-data 4
        0x43610000    # 225.0f
        0x42ac0000    # 86.0f
        0x42bc0000    # 94.0f
        0x42c40000    # 98.0f
        0x42cc0000    # 102.0f
        0x42d60000    # 107.0f
        0x42de0000    # 111.0f
        0x42e60000    # 115.0f
        0x42f00000    # 120.0f
        0x42f80000    # 124.0f
        0x43010000    # 129.0f
        0x43050000    # 133.0f
        0x43090000    # 137.0f
        0x430d0000    # 141.0f
        0x43120000    # 146.0f
        0x43160000    # 150.0f
        0x431b0000    # 155.0f
        0x431f0000    # 159.0f
        0x43230000    # 163.0f
        0x43270000    # 167.0f
        0x432c0000    # 172.0f
        0x43300000    # 176.0f
        0x43350000    # 181.0f
        0x43390000    # 185.0f
        0x433e0000    # 190.0f
        0x43420000    # 194.0f
        0x43460000    # 198.0f
        0x434a0000    # 202.0f
        0x434e0000    # 206.0f
        0x43530000    # 211.0f
        0x43580000    # 216.0f
        0x435c0000    # 220.0f
    .end array-data

    .line 85
    :array_4
    .array-data 4
        -0x3c9f0000    # -225.0f
        -0x3c810000    # -255.0f
        -0x3c790000    # -270.0f
        -0x3c720000    # -284.0f
    .end array-data

    .line 89
    :array_5
    .array-data 4
        -0x3e0c0000    # -30.5f
        -0x3e900000    # -15.0f
        -0x3e900000    # -15.0f
        -0x3e900000    # -15.0f
    .end array-data

    .line 96
    :array_6
    .array-data 4
        0x43ed8000    # 475.0f
        0x43610000    # 225.0f
        0x43720000    # 242.0f
        0x43828000    # 261.0f
        0x438b8000    # 279.0f
        0x43948000    # 297.0f
        0x439d8000    # 315.0f
        0x43a68000    # 333.0f
        0x43b08000    # 353.0f
        0x43ba8000    # 373.0f
        0x43c48000    # 393.0f
        0x43ce8000    # 413.0f
        0x43d88000    # 433.0f
        0x43e28000    # 453.0f
    .end array-data

    .line 101
    :array_7
    .array-data 4
        0x43610000    # 225.0f
        0x43708000    # 240.5f
        0x437f0000    # 255.0f
        0x4386c000    # 269.5f
        0x438e4000    # 284.5f
        0x43958000    # 299.0f
    .end array-data

    .line 106
    :array_8
    .array-data 4
        0x41800000    # 16.0f
        0x41680000    # 14.5f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
    .end array-data

    .line 113
    :array_9
    .array-data 4
        0x440b4000    # 557.0f
        0x43700000    # 240.0f
        0x437e0000    # 254.0f
        0x43844000    # 264.5f
        0x43894000    # 274.5f
        0x438e4000    # 284.5f
        0x43934000    # 294.5f
        0x43984000    # 304.5f
        0x439d8000    # 315.0f
        0x43a28000    # 325.0f
        0x43a78000    # 335.0f
        0x43ac8000    # 345.0f
        0x43b18000    # 355.0f
        0x43b68000    # 365.0f
        0x43bb8000    # 375.0f
        0x43c08000    # 385.0f
        0x43c58000    # 395.0f
        0x43ca8000    # 405.0f
        0x43cf8000    # 415.0f
        0x43d48000    # 425.0f
        0x43d98000    # 435.0f
        0x43de8000    # 445.0f
        0x43e38000    # 455.0f
        0x43e88000    # 465.0f
        0x43ed8000    # 475.0f
        0x43f28000    # 485.0f
        0x43f78000    # 495.0f
        0x43fc8000    # 505.0f
        0x4400c000    # 515.0f
        0x44034000    # 525.0f
        0x4405c000    # 535.0f
        0x44084000    # 545.0f
    .end array-data

    .line 120
    :array_a
    .array-data 4
        -0x3c9f0000    # -225.0f
        -0x3c810000    # -255.0f
        -0x3c790000    # -270.0f
        -0x3c718000    # -285.0f
    .end array-data

    .line 124
    :array_b
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e900000    # -15.0f
        -0x3e900000    # -15.0f
        -0x3e900000    # -15.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
