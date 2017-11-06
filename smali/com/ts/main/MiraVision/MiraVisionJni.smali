.class public Lcom/ts/main/MiraVision/MiraVisionJni;
.super Ljava/lang/Object;
.source "MiraVisionJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    }
.end annotation


# static fields
.field public static final AAL_FUNC_CABC:I = 0x2

.field public static final AAL_FUNC_DRE:I = 0x4

.field private static final AAL_FUNC_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.aal.function"

.field public static final CAMERA_INDEX:I = 0xe

.field public static final DEFAULT_INDEX:I = 0x7

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MiraVisionJni"

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ts/main/MiraVision/MiraVisionJni;->sLibStatus:Z

    .line 99
    :try_start_0
    const-string v1, "MiraVisionJni"

    const-string v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "MiraVision_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 101
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MiraVisionJni"

    const-string v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ts/main/MiraVision/MiraVisionJni;->sLibStatus:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static getAALFunction()I
    .locals 2

    .prologue
    .line 363
    const-string v0, "persist.sys.aal.function"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 144
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 147
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getContrastIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 150
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 152
    return-object v1
.end method

.method public static getDefaultAALFunction()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x6

    return v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 258
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 261
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getDynamicContrastIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 264
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 266
    return-object v1
.end method

.method public static getGammaIndex()I
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndex()I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 314
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 317
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getGammaIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 320
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 322
    return-object v1
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/ts/main/MiraVision/MiraVisionJni;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 198
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 201
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getPicBrightnessIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 204
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 206
    return-object v1
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 171
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 174
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getSaturationIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 177
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 179
    return-object v1
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 5

    .prologue
    .line 231
    new-instance v1, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v1}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 234
    .local v1, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const-string v2, "MiraVisionJni"

    const-string v3, "getSharpnessIndexRange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .line 237
    .local v0, "PQrange":Lcom/mediatek/pq/PictureQuality$Range;
    iget v2, v0, Lcom/mediatek/pq/PictureQuality$Range;->min:I

    iget v3, v0, Lcom/mediatek/pq/PictureQuality$Range;->max:I

    iget v4, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 239
    return-object v1
.end method

.method public static getUserBrightnessRange()Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    new-instance v0, Lcom/ts/main/MiraVision/MiraVisionJni$Range;

    invoke-direct {v0}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;-><init>()V

    .line 372
    .local v0, "r":Lcom/ts/main/MiraVision/MiraVisionJni$Range;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/ts/main/MiraVision/MiraVisionJni$Range;->set(III)V

    .line 373
    return-object v0
.end method

.method public static nativeEnableODDemo(I)Z
    .locals 4
    .param p0, "isEnable"    # I

    .prologue
    const/4 v1, 0x1

    .line 283
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 285
    const-string v2, "MiraVisionJni"

    const-string v3, "nativeEnableODDemo, query OD support!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getCapability()I

    move-result v0

    .line 290
    .local v0, "cap":I
    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 299
    .end local v0    # "cap":I
    :goto_0
    return v1

    .line 293
    .restart local v0    # "cap":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 297
    .end local v0    # "cap":I
    :cond_1
    const-string v2, "MiraVisionJni"

    const-string v3, "nativeEnableODDemo.."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->enableOD(I)Z

    goto :goto_0
.end method

.method public static nativeEnablePQColor(I)Z
    .locals 2
    .param p0, "isEnable"    # I

    .prologue
    .line 114
    const-string v0, "MiraVisionJni"

    const-string v1, "nativeEnablePQColor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->enableColor(I)Z

    move-result v0

    return v0
.end method

.method public static nativeGetPictureMode()I
    .locals 2

    .prologue
    .line 121
    const-string v0, "MiraVisionJni"

    const-string v1, "nativeGetPictureMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getPictureMode()I

    move-result v0

    return v0
.end method

.method private static native nativeSetAALFunction(I)V
.end method

.method public static nativeSetPQColorRegion(IIIII)Z
    .locals 2
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 136
    const-string v0, "MiraVisionJni"

    const-string v1, "nativeSetPQColorRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->setColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static nativeSetPictureMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 128
    const-string v0, "MiraVisionJni"

    const-string v1, "nativeSetPictureMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    move-result v0

    return v0
.end method

.method public static nativeSetTuningMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public static resetPQ(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v0, "MiraVisionJni"

    const-string v1, "resetPQ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setContrastIndex(I)V

    .line 383
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setSaturationIndex(I)V

    .line 384
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setSharpnessIndex(I)V

    .line 385
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setPicBrightnessIndex(I)V

    .line 386
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setGammaIndex(I)V

    .line 387
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setDynamicContrastIndex(I)V

    .line 392
    invoke-static {v2}, Lcom/mediatek/pq/PictureQuality;->enableOD(I)Z

    .line 394
    invoke-static {}, Lcom/ts/main/MiraVision/MiraVisionJni;->getDefaultAALFunction()I

    move-result v0

    invoke-static {v0}, Lcom/ts/main/MiraVision/MiraVisionJni;->setAALFunction(I)V

    .line 396
    invoke-static {v2}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    .line 397
    return-void
.end method

.method public static setAALFunction(I)V
    .locals 2
    .param p0, "func"    # I

    .prologue
    .line 358
    const-string v0, "persist.sys.aal.function"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {p0}, Lcom/ts/main/MiraVision/MiraVisionJni;->nativeSetAALFunction(I)V

    .line 360
    return-void
.end method

.method public static setContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 164
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setContrastIndex(I)V

    .line 165
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 278
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setDynamicContrastIndex(I)V

    .line 279
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 333
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setGammaIndex(I)V

    .line 334
    return-void
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 218
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setPicBrightnessIndex(I)V

    .line 219
    return-void
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setSaturationIndex(I)V

    .line 192
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 251
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setSharpnessIndex(I)V

    .line 252
    return-void
.end method

.method public static setUserBrightness(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 378
    return-void
.end method
