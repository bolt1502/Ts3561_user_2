.class public Lcom/txznet/comm/T3/T/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/txznet/comm/T3/T/TN;->T:D

    return-void
.end method

.method public static T(DD)[D
    .locals 15
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .prologue
    .line 112
    const-wide v9, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v3, p2, v9

    .local v3, "x":D
    const-wide v9, 0x3f789374bc6a7efaL    # 0.006

    sub-double v5, p0, v9

    .line 113
    .local v5, "y":D
    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    const-wide v11, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v13, Lcom/txznet/comm/T3/T/TN;->T:D

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double v7, v9, v11

    .line 114
    .local v7, "z":D
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v11, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v13, Lcom/txznet/comm/T3/T/TN;->T:D

    mul-double/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double v1, v9, v11

    .line 115
    .local v1, "theta":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double p2, v7, v9

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double p0, v7, v9

    .line 117
    const/4 v9, 0x2

    new-array v0, v9, [D

    .line 118
    .local v0, "point":[D
    const/4 v9, 0x0

    aput-wide p0, v0, v9

    .line 119
    const/4 v9, 0x1

    aput-wide p2, v0, v9

    .line 120
    return-object v0
.end method
