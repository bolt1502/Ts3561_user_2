.class public Lcom/ts/other/ValCal;
.super Ljava/lang/Object;
.source "ValCal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AbsSub(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 84
    if-le p0, p1, :cond_0

    .line 86
    sub-int v0, p0, p1

    .line 89
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p0

    goto :goto_0
.end method

.method public static NumApproach(II)I
    .locals 2
    .param p0, "des"    # I
    .param p1, "src"    # I

    .prologue
    .line 94
    if-eq p0, p1, :cond_0

    .line 96
    invoke-static {p0, p1}, Lcom/ts/other/ValCal;->AbsSub(II)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 98
    if-ge p1, p0, :cond_1

    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 112
    :cond_0
    :goto_0
    return p1

    .line 104
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method public static dataCal(IIIIZZ)I
    .locals 2
    .param p0, "cur"    # I
    .param p1, "step"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "inc"    # Z
    .param p5, "loop"    # Z

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "ret":I
    if-eqz p4, :cond_2

    .line 12
    add-int v1, p0, p1

    if-le v1, p3, :cond_1

    .line 14
    if-eqz p5, :cond_0

    .line 16
    move v0, p2

    .line 46
    :goto_0
    return v0

    .line 20
    :cond_0
    move v0, p3

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    add-int v0, p0, p1

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    sub-int v1, p0, p1

    if-ge v1, p2, :cond_4

    .line 32
    if-eqz p5, :cond_3

    .line 34
    move v0, p3

    .line 35
    goto :goto_0

    .line 38
    :cond_3
    move v0, p2

    .line 40
    goto :goto_0

    .line 43
    :cond_4
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method public static dataDec(III)I
    .locals 6
    .param p0, "cur"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v1, 0x1

    move v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/ts/other/ValCal;->dataCal(IIIIZZ)I

    move-result v0

    return v0
.end method

.method public static dataInc(III)I
    .locals 6
    .param p0, "cur"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v5, 0x0

    move v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/ts/other/ValCal;->dataCal(IIIIZZ)I

    move-result v0

    return v0
.end method

.method public static dataStepLoop(IIIZ)I
    .locals 6
    .param p0, "cur"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "inc"    # Z

    .prologue
    const/4 v1, 0x1

    .line 66
    move v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/ts/other/ValCal;->dataCal(IIIIZZ)I

    move-result v0

    return v0
.end method

.method public static dataStepNoLoop(IIIZ)I
    .locals 6
    .param p0, "cur"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "inc"    # Z

    .prologue
    .line 61
    const/4 v1, 0x1

    const/4 v5, 0x0

    move v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ts/other/ValCal;->dataCal(IIIIZZ)I

    move-result v0

    return v0
.end method

.method public static int2Bool(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
