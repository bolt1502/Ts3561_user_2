.class public final Lcom/ts/can/RadarUIView$Common;
.super Ljava/lang/Object;
.source "RadarUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/RadarUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation


# static fields
.field public static final mBigRadius:[F

.field public static final mBigStartDegrees:[F

.field public static final mBigSweepDegrees:[F

.field public static mBmpIds:[I

.field public static final mRadius:[F

.field public static final mStartDegrees:[F

.field public static final mSweepDegrees:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x4

    .line 26
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mRadius:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mStartDegrees:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mSweepDegrees:[F

    .line 38
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mBigRadius:[F

    .line 42
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mBigStartDegrees:[F

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mBigSweepDegrees:[F

    .line 50
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 51
    sget v2, Lcom/ts/MainUI/R$drawable;->radar_shang:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$drawable;->radar_xia:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 52
    sget v2, Lcom/ts/MainUI/R$drawable;->big_radar_shang:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$drawable;->big_radar_xia:I

    aput v2, v0, v1

    .line 50
    sput-object v0, Lcom/ts/can/RadarUIView$Common;->mBmpIds:[I

    .line 53
    return-void

    .line 26
    :array_0
    .array-data 4
        0x43390000    # 185.0f
        0x42a00000    # 80.0f
        0x42ba0000    # 93.0f
        0x42ce0000    # 103.0f
        0x42e00000    # 112.0f
        0x42f40000    # 122.0f
        0x43050000    # 133.0f
        0x430d0000    # 141.0f
        0x43170000    # 151.0f
        0x43220000    # 162.0f
        0x432b0000    # 171.0f
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x436c0000    # 236.0f
        0x437d8000    # 253.5f
        0x43870000    # 270.0f
        0x438f0000    # 286.0f
    .end array-data

    .line 33
    :array_2
    .array-data 4
        0x41900000    # 18.0f
        0x41840000    # 16.5f
        0x41840000    # 16.5f
        0x41900000    # 18.0f
    .end array-data

    .line 38
    :array_3
    .array-data 4
        0x43eb0000    # 470.0f
        0x436a0000    # 234.0f
        0x43820000    # 260.0f
        0x438c8000    # 281.0f
        0x43988000    # 305.0f
        0x43a40000    # 328.0f
        0x43af0000    # 350.0f
        0x43ba0000    # 372.0f
        0x43c58000    # 395.0f
        0x43d08000    # 417.0f
        0x43dc0000    # 440.0f
    .end array-data

    .line 42
    :array_4
    .array-data 4
        0x436c0000    # 236.0f
        0x437f8000    # 255.5f
        0x43870000    # 270.0f
        0x438e4000    # 284.5f
    .end array-data

    .line 45
    :array_5
    .array-data 4
        0x419c0000    # 19.5f
        0x41680000    # 14.5f
        0x41680000    # 14.5f
        0x41680000    # 14.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
