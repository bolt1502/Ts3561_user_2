.class final Lcom/ts/can/RadarUIView$XT5;
.super Ljava/lang/Object;
.source "RadarUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/RadarUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XT5"
.end annotation


# static fields
.field public static mBmpIds:[I

.field public static final mRadius:[F

.field public static final mStartDegrees:[F

.field public static final mSweepDegrees:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ts/can/RadarUIView$XT5;->mRadius:[F

    .line 141
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ts/can/RadarUIView$XT5;->mStartDegrees:[F

    .line 144
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/ts/can/RadarUIView$XT5;->mSweepDegrees:[F

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 147
    sget v2, Lcom/ts/MainUI/R$drawable;->xt5_radar_up:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$drawable;->xt5_radar_down:I

    aput v2, v0, v1

    .line 146
    sput-object v0, Lcom/ts/can/RadarUIView$XT5;->mBmpIds:[I

    .line 148
    return-void

    .line 139
    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x42a00000    # 80.0f
        0x42c40000    # 98.0f
        0x42f00000    # 120.0f
        0x430c0000    # 140.0f
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0x43680000    # 232.0f
        0x437b8000    # 251.5f
        0x43870000    # 270.0f
        0x438f0000    # 286.0f
    .end array-data

    .line 144
    :array_2
    .array-data 4
        0x41a00000    # 20.0f
        0x41900000    # 18.0f
        0x41840000    # 16.5f
        0x41b00000    # 22.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
