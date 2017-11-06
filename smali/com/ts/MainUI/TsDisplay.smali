.class public Lcom/ts/MainUI/TsDisplay;
.super Ljava/lang/Object;
.source "TsDisplay.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mDisplay:Lcom/ts/MainUI/TsDisplay;


# instance fields
.field private nDelayTime:I

.field private nSetData:I

.field public nSetTcon:I

.field private nSrcMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "TsDisplay"

    sput-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/TsDisplay;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    .line 19
    iput v1, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    .line 20
    iput v1, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/TsDisplay;->nSetTcon:I

    .line 15
    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/TsDisplay;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ts/MainUI/TsDisplay;

    invoke-direct {v0}, Lcom/ts/MainUI/TsDisplay;-><init>()V

    sput-object v0, Lcom/ts/MainUI/TsDisplay;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    .line 33
    :cond_0
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->mDisplay:Lcom/ts/MainUI/TsDisplay;

    return-object v0
.end method


# virtual methods
.method CheckVal(I)I
    .locals 2
    .param p1, "nVal"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "nRerutn":I
    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    .line 88
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v0, v1, 0xa

    .line 89
    if-lez v0, :cond_0

    .line 91
    add-int/lit8 v0, v0, -0x1

    .line 94
    :cond_0
    return v0
.end method

.method public DealTask(I)I
    .locals 5
    .param p1, "nParat"    # I

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xff

    .line 224
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    if-lez v2, :cond_0

    .line 226
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    .line 227
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    if-nez v2, :cond_0

    .line 229
    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->BklTurnInt(I)I

    .line 230
    sget-object v2, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    const-string v3, "BklTurnInt end "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    iget v3, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    if-eq v2, v0, :cond_2

    .line 235
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    if-eq v2, v0, :cond_1

    .line 237
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/ts/MainUI/TsDisplay;->SetSrcMute(I)V

    .line 239
    :cond_1
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    iput v2, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    .line 240
    iget v2, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    invoke-virtual {p0, v2}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 241
    sget-object v2, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetDisp == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 251
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public Inint()V
    .locals 9

    .prologue
    const/16 v7, 0xff

    .line 37
    iput v7, p0, Lcom/ts/MainUI/TsDisplay;->nSrcMode:I

    .line 38
    const/4 v6, 0x0

    iput v6, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    .line 39
    iput v7, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    .line 42
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nNowPQMode=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeGetPictureMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v3

    .line 44
    .local v3, "conRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "conRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "conRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "conRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v3, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getContrastIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSaturationIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v5

    .line 51
    .local v5, "statusRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSaturationIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSaturationIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getPicBrightnessIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v2

    .line 58
    .local v2, "bretnessRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bretnessRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bretnessRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bretnessRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getPicBrightnessIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getPicBrightnessIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSharpnessIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v4

    .line 64
    .local v4, "sharpbretnessRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sharpbretnessRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sharpbretnessRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sharpbretnessRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSharpnessIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSharpnessIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v0

    .line 70
    .local v0, "ColorEffectRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ColorEffectRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ColorEffectRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ColorEffectRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getColorEffectIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getColorEffectIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getDynamicContrastIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v1

    .line 76
    .local v1, "DCEffectRange":Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DCEffectRange.max=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DCEffectRange.min=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DCEffectRange.defaultValue=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->defaultValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v6, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getDynamicContrastIndex=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getDynamicContrastIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public SetDisp(I)V
    .locals 0
    .param p1, "nMode"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/ts/MainUI/TsDisplay;->nSetData:I

    .line 100
    return-void
.end method

.method public SetDispParat(I)V
    .locals 7
    .param p1, "nSrc"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 107
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetDispParat =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTconAdj()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 112
    :cond_0
    if-ltz p1, :cond_1

    .line 115
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetColor(nSrc, Iop.CVBS_BRIGHTNESS)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetColor(nSrc, Iop.CVBS_CONTRAST)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetColor(nSrc, Iop.CVBS_SATURATION)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iop.GetColor(nSrc, Iop.CVBS_HUE)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v4}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    .line 120
    invoke-static {v3}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeEnablePQColor(I)Z

    .line 121
    invoke-static {v3}, Lcom/mediatek/pq/PictureQuality;->enablePQ(I)Z

    .line 122
    invoke-static {v3}, Lcom/mediatek/pq/PictureQuality;->enableColorEffect(I)Z

    .line 123
    invoke-static {v3}, Lcom/mediatek/pq/PictureQuality;->enableDynamicContrast(I)Z

    .line 124
    invoke-static {v3}, Lcom/mediatek/pq/PictureQuality;->enableSharpness(I)Z

    .line 128
    invoke-static {p1, v5}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/TsDisplay;->CheckVal(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setPicBrightnessIndex(I)V

    .line 129
    invoke-static {p1, v3}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/TsDisplay;->CheckVal(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setContrastIndex(I)V

    .line 130
    invoke-static {p1, v6}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/TsDisplay;->CheckVal(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSaturationIndex(I)V

    .line 132
    invoke-static {p1, v4}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/TsDisplay;->CheckVal(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSharpnessIndex(I)V

    .line 136
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiraVisionJni.getPicBrightnessIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getPicBrightnessIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMiraVisionJni.getContrastIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiraVisionJni.getSaturationIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSaturationIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiraVisionJni.getColorEffectIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getColorEffectIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiraVisionJni.getSharpnessIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSharpnessIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiraVisionJni.getDynamicContrastIndex()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getDynamicContrastIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    :cond_1
    invoke-static {v3}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    goto/16 :goto_0
.end method

.method public SetSrcMute(I)V
    .locals 2
    .param p1, "nTime"    # I

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->BklTurnInt(I)I

    .line 24
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    const-string v1, "BklTurnInt start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput p1, p0, Lcom/ts/MainUI/TsDisplay;->nDelayTime:I

    .line 26
    return-void
.end method

.method public UIGetVal(II)I
    .locals 4
    .param p1, "nSrc"    # I
    .param p2, "nType"    # I

    .prologue
    const/16 v0, 0x32

    const/4 v1, 0x3

    .line 157
    if-le p1, v1, :cond_0

    .line 159
    sget-object v1, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UISetVal error nSrc == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return v0

    .line 162
    :cond_0
    if-le p2, v1, :cond_1

    .line 164
    sget-object v1, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UISetVal error nType == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {p1, p2}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    goto :goto_0
.end method

.method UISetColorParat(III)V
    .locals 0
    .param p1, "nSrc"    # I
    .param p2, "nType"    # I
    .param p3, "nVal"    # I

    .prologue
    .line 173
    return-void
.end method

.method public UISetDefault(I)V
    .locals 2
    .param p1, "nSrc"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    const-string v1, "UISetDefault "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->SetColorDefault(I)I

    .line 153
    invoke-virtual {p0, p1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    .line 154
    return-void
.end method

.method public UISetVal(III)V
    .locals 3
    .param p1, "nSrc"    # I
    .param p2, "nType"    # I
    .param p3, "nLevel"    # I

    .prologue
    const/4 v0, 0x3

    .line 205
    if-le p1, v0, :cond_0

    .line 207
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UISetVal error nSrc == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    if-le p2, v0, :cond_1

    .line 212
    sget-object v0, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UISetVal error nType == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/yyw/ts70xhw/Iop;->SetColor(III)I

    .line 216
    invoke-virtual {p0, p1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    goto :goto_0
.end method

.method public UIValStep(III)V
    .locals 4
    .param p1, "nSrc"    # I
    .param p2, "nType"    # I
    .param p3, "nStep"    # I

    .prologue
    const/4 v1, 0x3

    .line 177
    if-le p1, v1, :cond_0

    .line 179
    sget-object v1, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UIValStep error nSrc == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 182
    :cond_0
    if-le p2, v1, :cond_1

    .line 184
    sget-object v1, Lcom/ts/MainUI/TsDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UIValStep error nType == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {p1, p2}, Lcom/yyw/ts70xhw/Iop;->GetColor(II)I

    move-result v0

    .line 188
    .local v0, "nVal":I
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 190
    add-int/lit8 v0, v0, 0xa

    .line 192
    invoke-static {p1, p2, v0}, Lcom/yyw/ts70xhw/Iop;->SetColor(III)I

    .line 193
    invoke-virtual {p0, p1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v0, v0, -0xa

    .line 198
    invoke-static {p1, p2, v0}, Lcom/yyw/ts70xhw/Iop;->SetColor(III)I

    .line 199
    invoke-virtual {p0, p1}, Lcom/ts/MainUI/TsDisplay;->SetDispParat(I)V

    goto :goto_0
.end method
