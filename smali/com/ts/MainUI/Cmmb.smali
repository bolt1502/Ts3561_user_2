.class public Lcom/ts/MainUI/Cmmb;
.super Ljava/lang/Object;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/Cmmb$StBtnControlXh;,
        Lcom/ts/MainUI/Cmmb$TsBtnConTrol;,
        Lcom/ts/MainUI/Cmmb$TsButtonControl;,
        Lcom/ts/MainUI/Cmmb$TsControlkld;,
        Lcom/ts/MainUI/Cmmb$TsControlkld2;,
        Lcom/ts/MainUI/Cmmb$TsTouchYK;,
        Lcom/ts/MainUI/Cmmb$TsTouchYK2;
    }
.end annotation


# static fields
.field static final IR_CONTROL_MODE:I = 0x1

.field static final IR_CONTROL_MODE1:I = 0x2

.field static final IR_CONTROL_MODE_KLD:I = 0x5

.field static final IR_CONTROL_MODE_KLD2:I = 0x7

.field static final IR_CONTROL_XH:I = 0x3

.field static final IR_TOUCH_MODE:I = 0x0

.field static final IR_TOUCH_MODE2:I = 0x4

.field static final TAG:Ljava/lang/String; = "Cmmb"

.field static final TOUCH_USB_CMMB:I = 0x6

.field private static mCmmb:Lcom/ts/MainUI/Cmmb;

.field private static nCmmbType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    const/16 v0, 0xff

    sput v0, Lcom/ts/MainUI/Cmmb;->nCmmbType:I

    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/Cmmb;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/ts/MainUI/Cmmb;

    invoke-direct {v0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    .line 237
    sget-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Cmmb;->SetType(I)V

    .line 239
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    return-object v0
.end method


# virtual methods
.method public CmmbDn()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public CmmbEnter()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public CmmbLanguage()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public CmmbLeft()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public CmmbList()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public CmmbReturn()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public CmmbRight()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public CmmbSearch()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public CmmbUp()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public DealCmmbKey(I)I
    .locals 1
    .param p1, "nKeyCode"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "nRet":I
    sparse-switch p1, :sswitch_data_0

    .line 325
    :goto_0
    return v0

    .line 288
    :sswitch_0
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->PlayNext()V

    .line 289
    const/4 v0, 0x1

    .line 290
    goto :goto_0

    .line 296
    :sswitch_1
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->PlayPrev()V

    .line 297
    const/4 v0, 0x1

    .line 298
    goto :goto_0

    .line 301
    :sswitch_2
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->CmmbDn()V

    .line 302
    const/4 v0, 0x1

    .line 303
    goto :goto_0

    .line 306
    :sswitch_3
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->CmmbUp()V

    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_0

    .line 311
    :sswitch_4
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->CmmbLeft()V

    .line 312
    const/4 v0, 0x1

    .line 313
    goto :goto_0

    .line 316
    :sswitch_5
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->CmmbRight()V

    .line 317
    const/4 v0, 0x1

    .line 318
    goto :goto_0

    .line 321
    :sswitch_6
    invoke-virtual {p0}, Lcom/ts/MainUI/Cmmb;->CmmbEnter()V

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_6
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_4
        0x45 -> :sswitch_5
        0x11f -> :sswitch_5
        0x120 -> :sswitch_4
        0x121 -> :sswitch_3
        0x122 -> :sswitch_2
        0x123 -> :sswitch_0
        0x124 -> :sswitch_1
        0x130 -> :sswitch_6
        0x203 -> :sswitch_1
        0x204 -> :sswitch_0
        0x310 -> :sswitch_0
        0x315 -> :sswitch_1
        0x31a -> :sswitch_0
        0x31f -> :sswitch_1
    .end sparse-switch
.end method

.method public PlayNext()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public PlayPrev()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public SendIrCode(IIII)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 40
    const-string v0, "Cmmb"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIrCode a= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p1, p2, p3, p4}, Lcom/yyw/ts70xhw/Mcu;->SendxyTouch(IIII)I

    .line 43
    return-void
.end method

.method public SendTouch(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 24
    return-void
.end method

.method public SetType(I)V
    .locals 1
    .param p1, "nType"    # I

    .prologue
    .line 243
    sput p1, Lcom/ts/MainUI/Cmmb;->nCmmbType:I

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 271
    new-instance v0, Lcom/ts/MainUI/Cmmb;

    invoke-direct {v0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    .line 274
    :goto_0
    return-void

    .line 247
    :sswitch_0
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsTouchYK;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsTouchYK;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 250
    :sswitch_1
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsButtonControl;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsButtonControl;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 253
    :sswitch_2
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 256
    :sswitch_3
    new-instance v0, Lcom/ts/MainUI/Cmmb$StBtnControlXh;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$StBtnControlXh;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 259
    :sswitch_4
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsTouchYK2;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsTouchYK2;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 262
    :sswitch_5
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsControlkld;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsControlkld;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 265
    :sswitch_6
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsControlkld2;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsControlkld2;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 268
    :sswitch_7
    new-instance v0, Lcom/ts/MainUI/Cmmb$TsTouchYK;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Cmmb$TsTouchYK;-><init>(Lcom/ts/MainUI/Cmmb;)V

    sput-object v0, Lcom/ts/MainUI/Cmmb;->mCmmb:Lcom/ts/MainUI/Cmmb;

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x63 -> :sswitch_7
    .end sparse-switch
.end method
