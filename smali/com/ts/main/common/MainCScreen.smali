.class public Lcom/ts/main/common/MainCScreen;
.super Ljava/lang/Object;
.source "MainCScreen.java"


# static fields
.field private static final CKEY1_AC:I = 0x1a

.field private static final CKEY1_ACADD:I = 0x14

.field private static final CKEY1_ACAUTO:I = 0x18

.field private static final CKEY1_ACBACK:I = 0x1e

.field private static final CKEY1_ACDEC:I = 0x13

.field private static final CKEY1_ACFRONT:I = 0x1d

.field private static final CKEY1_ACLOOP:I = 0x1b

.field private static final CKEY1_ACMODE:I = 0x17

.field private static final CKEY1_ACOFF:I = 0x1f

.field private static final CKEY1_ACPTC:I = 0x19

.field private static final CKEY1_ACSWITCH:I = 0x1c

.field private static final CKEY1_FSADD:I = 0x16

.field private static final CKEY1_FSDEC:I = 0x15

.field private static final CKEY1_SEEKADD:I = 0x12

.field private static final CKEY1_SEEKDEC:I = 0x11

.field private static final CKEY_AMS:I = 0xc

.field private static final CKEY_APP_SWITCH:I = 0x66

.field private static final CKEY_DVD:I = 0x12

.field private static final CKEY_EJECT:I = 0xb

.field private static final CKEY_HAND:I = 0x8

.field private static final CKEY_HOME:I = 0x2

.field public static final CKEY_MAX:I = 0x20

.field private static final CKEY_MODE:I = 0xd

.field private static final CKEY_MUTE:I = 0xe

.field private static final CKEY_NAVI:I = 0x6

.field public static final CKEY_NAW_MAX:I = 0x12

.field private static final CKEY_NEXT:I = 0xa

.field private static final CKEY_PHOME:I = 0x7

.field private static final CKEY_PLAYPAUSE:I = 0x10

.field private static final CKEY_POWER:I = 0x1

.field private static final CKEY_PREV:I = 0x9

.field private static final CKEY_RADIO_BAND:I = 0x11

.field private static final CKEY_RETURN:I = 0x3

.field private static final CKEY_SCREEN_MUTE:I = 0x65

.field private static final CKEY_STOP:I = 0xf

.field private static final CKEY_VOLADD:I = 0x4

.field private static final CKEY_VOLDEC:I = 0x5

.field static MyScreen:Lcom/ts/main/common/MainCScreen; = null

.field private static final TAG:Ljava/lang/String; = "MainCScreen"

.field private static final TOUCH_LEN:I = 0x1e

.field private static final TOUCH_LEN_MIN:I = 0x5

.field private static final TOUCH_LEN_Max:I = 0x3c


# instance fields
.field private bDown:Z

.field private bStand:Z

.field nCKey:I

.field nCstudy:[I

.field private nFirst:I

.field private nPoint:[I

.field private nPointOld:[I

.field nReadyKey:[I

.field private nTouchDownKey:I

.field public nTouchLen:I

.field private nTouchStand:I

.field private nTouchUpKey:I

.field nType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/common/MainCScreen;->MyScreen:Lcom/ts/main/common/MainCScreen;

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/main/common/MainCScreen;->nType:I

    .line 19
    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    .line 61
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    .line 151
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    .line 153
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/ts/main/common/MainCScreen;->nReadyKey:[I

    .line 458
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ts/main/common/MainCScreen;->nPoint:[I

    .line 459
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    .line 460
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/main/common/MainCScreen;->nFirst:I

    .line 461
    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchDownKey:I

    .line 462
    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    .line 463
    iput-boolean v1, p0, Lcom/ts/main/common/MainCScreen;->bDown:Z

    .line 464
    iput-boolean v1, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    .line 465
    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    .line 13
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/common/MainCScreen;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/ts/main/common/MainCScreen;->MyScreen:Lcom/ts/main/common/MainCScreen;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/ts/main/common/MainCScreen;

    invoke-direct {v0}, Lcom/ts/main/common/MainCScreen;-><init>()V

    sput-object v0, Lcom/ts/main/common/MainCScreen;->MyScreen:Lcom/ts/main/common/MainCScreen;

    .line 163
    :cond_0
    sget-object v0, Lcom/ts/main/common/MainCScreen;->MyScreen:Lcom/ts/main/common/MainCScreen;

    return-object v0
.end method


# virtual methods
.method CacuLen(IIII)I
    .locals 4
    .param p1, "nx1"    # I
    .param p2, "ny1"    # I
    .param p3, "nx2"    # I
    .param p4, "ny2"    # I

    .prologue
    .line 168
    sub-int v0, p1, p3

    .line 169
    .local v0, "nDetx":I
    sub-int v1, p2, p4

    .line 170
    .local v1, "nDety":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public ClearAllKey()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 645
    iput v2, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    .line 646
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aput v2, v1, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method DealCWKey(I)V
    .locals 6
    .param p1, "nKeyCode"    # I

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 307
    const-string v0, "MainCScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealCWKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 310
    :sswitch_0
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 313
    :sswitch_1
    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 316
    :sswitch_2
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 319
    :sswitch_3
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 322
    :sswitch_4
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 325
    :sswitch_5
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 328
    :sswitch_6
    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 331
    :sswitch_7
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 334
    :sswitch_8
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 337
    :sswitch_9
    invoke-static {v4, v4}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 340
    :sswitch_a
    invoke-static {v4, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 343
    :sswitch_b
    const/4 v0, 0x4

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 346
    :sswitch_c
    const/4 v0, 0x7

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 349
    :sswitch_d
    const/4 v0, 0x3

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 352
    :sswitch_e
    const/4 v0, 0x5

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 355
    :sswitch_f
    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 358
    :sswitch_10
    const/4 v0, 0x6

    invoke-static {v0, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 361
    :sswitch_11
    invoke-static {v3, v3}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 364
    :sswitch_12
    invoke-static {v3, v4}, Lcom/ts/can/CanIF;->DealFmlACKey(II)V

    goto :goto_0

    .line 367
    :sswitch_13
    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_8
        0xd -> :sswitch_7
        0xe -> :sswitch_1
        0x11 -> :sswitch_6
        0x13 -> :sswitch_9
        0x14 -> :sswitch_a
        0x15 -> :sswitch_12
        0x16 -> :sswitch_11
        0x17 -> :sswitch_d
        0x1a -> :sswitch_b
        0x1b -> :sswitch_e
        0x1d -> :sswitch_c
        0x1e -> :sswitch_10
        0x1f -> :sswitch_f
        0x65 -> :sswitch_13
    .end sparse-switch
.end method

.method DealCkey(I)V
    .locals 1
    .param p1, "nKeyCode"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 438
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ts/main/common/MainCScreen;->DealCommonKey(I)V

    goto :goto_0

    .line 441
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ts/main/common/MainCScreen;->DealZhongyiKey(I)V

    goto :goto_0

    .line 445
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/ts/main/common/MainCScreen;->DealCWKey(I)V

    goto :goto_0

    .line 448
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ts/main/common/MainCScreen;->DealGeelyYjX1Key(I)V

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method DealCommonKey(I)V
    .locals 3
    .param p1, "nKeyCode"    # I

    .prologue
    .line 176
    const-string v0, "MainCScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealCommonKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sparse-switch p1, :sswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 179
    :sswitch_0
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 182
    :sswitch_1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 185
    :sswitch_2
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 188
    :sswitch_3
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 191
    :sswitch_4
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 194
    :sswitch_5
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 197
    :sswitch_6
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 200
    :sswitch_7
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 203
    :sswitch_8
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 206
    :sswitch_9
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 209
    :sswitch_a
    const/16 v0, 0x47

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 212
    :sswitch_b
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 215
    :sswitch_c
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 218
    :sswitch_d
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 221
    :sswitch_e
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 224
    :sswitch_f
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 227
    :sswitch_10
    invoke-static {}, Lcom/ts/main/common/KeyTouch;->GetInstance()Lcom/ts/main/common/KeyTouch;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lcom/ts/main/common/KeyTouch;->sendKeyClick(I)V

    goto :goto_0

    .line 230
    :sswitch_11
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 233
    :sswitch_12
    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 236
    :sswitch_13
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x65 -> :sswitch_f
        0x66 -> :sswitch_10
    .end sparse-switch
.end method

.method public DealCtouch(III)I
    .locals 11
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nMode"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x10000

    .line 665
    const-string v6, "MainCScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nPosX=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nPosY=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nMode=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v3, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    .line 667
    .local v3, "nMaxLen":I
    const/16 v1, 0xff

    .line 668
    .local v1, "nCode":I
    iget v6, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    if-nez v6, :cond_3

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x20

    if-lt v0, v6, :cond_1

    .line 700
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 672
    .restart local v0    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v6, v6, v0

    if-eqz v6, :cond_2

    .line 674
    iget-object v6, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v6, v6, v0

    div-int v4, v6, v9

    .line 675
    .local v4, "nX":I
    iget-object v6, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v6, v6, v0

    rem-int v5, v6, v9

    .line 676
    .local v5, "nY":I
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/ts/main/common/MainCScreen;->CacuLen(IIII)I

    move-result v2

    .line 677
    .local v2, "nLen":I
    if-ge v2, v3, :cond_2

    .line 679
    move v3, v2

    .line 680
    add-int/lit8 v1, v0, 0x1

    .line 670
    .end local v2    # "nLen":I
    .end local v4    # "nX":I
    .end local v5    # "nY":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "i":I
    :cond_3
    iget v6, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    if-lez v6, :cond_0

    .line 692
    iget-object v6, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    iget v7, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    add-int/lit8 v7, v7, -0x1

    mul-int v8, p1, v9

    add-int/2addr v8, p2

    aput v8, v6, v7

    .line 693
    iput v10, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    .line 694
    iget-object v6, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    invoke-static {v6}, Lcom/yyw/ts70xhw/FtSet;->SetCtStudy([I)I

    .line 695
    invoke-static {v10}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    goto :goto_1
.end method

.method DealGeelyYjX1Key(I)V
    .locals 4
    .param p1, "nKeyCode"    # I

    .prologue
    const/16 v3, 0x8

    .line 376
    const-string v0, "MainCScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealGeelyYjX1Key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sparse-switch p1, :sswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 379
    :sswitch_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 383
    :sswitch_1
    invoke-static {v3}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 387
    :sswitch_2
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 391
    :sswitch_3
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 395
    :sswitch_4
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 399
    :sswitch_5
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealGeelyYjx1ACKey(I)V

    goto :goto_0

    .line 403
    :sswitch_6
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 407
    :sswitch_7
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 411
    :sswitch_8
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 414
    :sswitch_9
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 418
    :sswitch_a
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 422
    :sswitch_b
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_2
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x1b -> :sswitch_5
        0x1d -> :sswitch_3
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public DealTask(I)V
    .locals 8
    .param p1, "nMode"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v3, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 472
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPoint:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/Iop;->GetTouchExt([I)I

    move-result v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nFirst:I

    if-ne v1, v4, :cond_5

    .line 474
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtErr()I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    .line 475
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    if-le v1, v3, :cond_3

    .line 477
    :cond_2
    const-string v1, "MainCScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DealTask ERROR nTouchLen =="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v1, 0x1e

    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    .line 479
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetCtErr(I)I

    .line 480
    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 486
    :goto_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 506
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-lt v0, v7, :cond_4

    .line 509
    iput v5, p0, Lcom/ts/main/common/MainCScreen;->nFirst:I

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :cond_3
    const-string v1, "MainCScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DealTask OK nTouchLen =="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 489
    :pswitch_0
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->GetCtStudy([I)I

    goto :goto_2

    .line 492
    :pswitch_1
    invoke-virtual {p0}, Lcom/ts/main/common/MainCScreen;->SetZhonyiKey()V

    goto :goto_2

    .line 495
    :pswitch_2
    invoke-virtual {p0}, Lcom/ts/main/common/MainCScreen;->SetCWKey()V

    goto :goto_2

    .line 498
    :pswitch_3
    invoke-virtual {p0}, Lcom/ts/main/common/MainCScreen;->SetHmS7Key()V

    goto :goto_2

    .line 501
    :pswitch_4
    invoke-virtual {p0}, Lcom/ts/main/common/MainCScreen;->SetGeelyYjx1Key()V

    goto :goto_2

    .line 507
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nPoint:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 513
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nPoint:[I

    aget v2, v2, v5

    if-eq v1, v2, :cond_b

    .line 514
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-lt v0, v7, :cond_7

    .line 518
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v1, v1, v5

    if-ne v1, v4, :cond_6

    .line 520
    iput-boolean v4, p0, Lcom/ts/main/common/MainCScreen;->bDown:Z

    .line 521
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v3, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/main/common/MainCScreen;->DealCtouch(III)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchDownKey:I

    .line 522
    iput v4, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    .line 523
    iput-boolean v5, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    .line 527
    :cond_6
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v1, v1, v5

    if-nez v1, :cond_0

    .line 529
    iput-boolean v5, p0, Lcom/ts/main/common/MainCScreen;->bDown:Z

    .line 530
    iget-boolean v1, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    aget v3, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/main/common/MainCScreen;->DealCtouch(III)I

    move-result v1

    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    .line 533
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchDownKey:I

    iget v2, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    if-ne v1, v2, :cond_0

    .line 535
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 537
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    if-ne v1, v4, :cond_a

    .line 539
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetPowState()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    .line 541
    invoke-virtual {p0, v4}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    goto/16 :goto_0

    .line 515
    :cond_7
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nPointOld:[I

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nPoint:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 545
    :cond_8
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainSet;->IsSMSI()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    goto/16 :goto_0

    .line 551
    :cond_9
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    goto/16 :goto_0

    .line 560
    :cond_a
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchUpKey:I

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    goto/16 :goto_0

    .line 572
    .end local v0    # "i":I
    :cond_b
    iget-boolean v1, p0, Lcom/ts/main/common/MainCScreen;->bDown:Z

    if-eqz v1, :cond_0

    .line 574
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    .line 575
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchDownKey:I

    packed-switch v1, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_0

    .line 578
    :pswitch_6
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    if-ne v1, v3, :cond_0

    .line 580
    invoke-virtual {p0, v4}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    .line 581
    iput-boolean v4, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    goto/16 :goto_0

    .line 585
    :pswitch_7
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 587
    iput v5, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    .line 588
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    .line 589
    iput-boolean v4, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    goto/16 :goto_0

    .line 593
    :pswitch_8
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 595
    iput v5, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    .line 596
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    .line 597
    iput-boolean v4, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    goto/16 :goto_0

    .line 601
    :pswitch_9
    iget v1, p0, Lcom/ts/main/common/MainCScreen;->nTouchStand:I

    if-ne v1, v3, :cond_0

    .line 603
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/ts/main/common/MainCScreen;->DealCkey(I)V

    .line 604
    iput-boolean v4, p0, Lcom/ts/main/common/MainCScreen;->bStand:Z

    goto/16 :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 575
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method DealZhongyiKey(I)V
    .locals 3
    .param p1, "nKeyCode"    # I

    .prologue
    .line 245
    const-string v0, "MainCScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealZhongyiKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sparse-switch p1, :sswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 248
    :sswitch_0
    const/16 v0, 0x46

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 251
    :sswitch_1
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 254
    :sswitch_2
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 257
    :sswitch_3
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 260
    :sswitch_4
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 263
    :sswitch_5
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 266
    :sswitch_6
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 269
    :sswitch_7
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 272
    :sswitch_8
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 275
    :sswitch_9
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 278
    :sswitch_a
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 282
    :sswitch_b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 285
    :sswitch_c
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 288
    :sswitch_d
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 291
    :sswitch_e
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 294
    :sswitch_f
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/ts/can/CanIF;->DealJLACKey(I)V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public GetShowString(I)Ljava/lang/String;
    .locals 4
    .param p1, "nKey"    # I

    .prologue
    const/high16 v3, 0x10000

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "StrBuf":Ljava/lang/String;
    iget-object v1, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v1, v1, p1

    if-lez v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v2, v2, p1

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";Y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v2, v2, p1

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :cond_0
    return-object v0
.end method

.method public GetStudyID()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    return v0
.end method

.method public IsStudy(I)I
    .locals 1
    .param p1, "nKey"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SetCWKey()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x1

    const v2, 0x7302d0

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x4

    const v2, 0xf202d0

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x3

    const v2, 0x16c02d0

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x0

    const v2, 0x20502f1

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x10

    const v2, 0x2a302dc

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0xc

    const v2, 0x31c02d1

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x6

    const v2, 0x39202d6

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x13

    const v2, 0xb1037f

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x12

    const v2, 0xb10440

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x19

    const v2, 0x129036e

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x16

    const v2, 0x1b603ba

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x14

    const v2, 0x35e0440

    aput v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x15

    const v2, 0x35b0381

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1a

    const v2, 0x2db036c

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1c

    const v2, 0x12b042a

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1d

    const v2, 0x2db042f

    aput v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1e

    const v2, 0x2db03be

    aput v2, v0, v1

    .line 106
    return-void
.end method

.method SetGeelyYjx1Key()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x18

    const v2, 0x4970007    # 3.5499955E-36f

    aput v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x19

    const v2, 0x4970041

    aput v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0xe

    const v2, 0x497006a

    aput v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1c

    const v2, 0x4970099

    aput v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1d

    const v2, 0x49700c3

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1a

    const v2, 0x49700ea

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x0

    const v2, 0x4560052

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x1

    const v2, 0x4560098

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x2

    const v2, 0x45600df

    aput v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x3

    const v2, 0x4560190

    aput v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x4

    const v2, 0x45601ce

    aput v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0xd

    const v2, 0x4560204

    aput v2, v0, v1

    .line 147
    return-void
.end method

.method SetHmS7Key()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x1

    const v2, 0x3e02cf

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x4

    const v2, 0xcf02cf

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x3

    const v2, 0x15502cf

    aput v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x0

    const v2, 0x1fe02f1

    aput v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x10

    const v2, 0x2a702cf

    aput v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0xc

    const v2, 0x33302cf

    aput v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x6

    const v2, 0x3ca02cf

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x13

    const v2, 0x8c037a

    aput v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x12

    const v2, 0x8c0447

    aput v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x19

    const v2, 0x10e0362

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x16

    const v2, 0x1b303b6

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x14

    const v2, 0x3700447

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x15

    const v2, 0x374037a

    aput v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1a

    const v2, 0x2ec035c

    aput v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1c

    const v2, 0x10a0438

    aput v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1d

    const v2, 0x2eb0438

    aput v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1e

    const v2, 0x2e803bc

    aput v2, v0, v1

    .line 131
    return-void
.end method

.method public SetNawStudyID(I)V
    .locals 3
    .param p1, "nCode"    # I

    .prologue
    .line 649
    if-lez p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 652
    iput p1, p0, Lcom/ts/main/common/MainCScreen;->nCKey:I

    .line 655
    :cond_0
    return-void
.end method

.method SetZhonyiKey()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x4

    const v2, 0x5c02c8

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x3

    const v2, 0x15402c8

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/4 v1, 0x0

    const v2, 0x20702c8

    aput v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x10

    const v2, 0x2bb02cc

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x11

    const v2, 0x3a502cc

    aput v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x12

    const v2, 0x78030e

    aput v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x13

    const v2, 0x10e030e

    aput v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x14

    const v2, 0x2f1030d

    aput v2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x15

    const v2, 0x387030f

    aput v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x16

    const v2, 0xde0377

    aput v2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x17

    const v2, 0x3250375

    aput v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x18

    const v2, 0xe903b8

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x19

    const v2, 0x17f03bb

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1a

    const v2, 0x24e03ba

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/ts/main/common/MainCScreen;->nCstudy:[I

    const/16 v1, 0x1b

    const v2, 0x30a03b8

    aput v2, v0, v1

    .line 81
    return-void
.end method
