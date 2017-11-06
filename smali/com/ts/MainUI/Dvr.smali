.class public Lcom/ts/MainUI/Dvr;
.super Ljava/lang/Object;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/Dvr$StDvrYSJ;,
        Lcom/ts/MainUI/Dvr$StDvrYSJTW;,
        Lcom/ts/MainUI/Dvr$StDvrYSJTW2;,
        Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;,
        Lcom/ts/MainUI/Dvr$StDvrZHY;
    }
.end annotation


# static fields
.field static final CUSTOM_CODE_TWZ:I = 0x0

.field static final CUSTOM_CODE__TWZ:I = 0xff

.field static final IR_DVR_KELAIDE:I = 0x9

.field static final IR_DVR_KFR:I = 0x5

.field static final IR_DVR_LEILMA:I = 0x8

.field static final IR_DVR_MODE0:I = 0x0

.field static final IR_DVR_MODE1:I = 0x1

.field static final IR_DVR_MODE2:I = 0x2

.field static final IR_DVR_MODE3:I = 0xa

.field static final IR_DVR_XHTW:I = 0x4

.field static final IR_DVR_XHTW2:I = 0x6

.field static final IR_DVR_ZHY:I = 0x3

.field static final IR_ZHONGKE_BTN:I = 0xd

.field static final TAG:Ljava/lang/String; = "Dvr"

.field static final UART_DVR_BST:I = 0xb

.field static final UART_DVR_LL:I = 0x7

.field static final UART_SHANLING_YSJ:I = 0xc

.field private static mDvr:Lcom/ts/MainUI/Dvr;

.field private static nDvrType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0xff

    sput v0, Lcom/ts/MainUI/Dvr;->nDvrType:I

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/Dvr;
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/ts/MainUI/Dvr;

    invoke-direct {v0}, Lcom/ts/MainUI/Dvr;-><init>()V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    .line 231
    sget-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDvrType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Dvr;->SetType(I)V

    .line 233
    :cond_0
    sget-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    return-object v0
.end method


# virtual methods
.method public BtnFun(I)I
    .locals 1
    .param p1, "nBtn"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public Calibrilate()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public PowerOff()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public SendBlack()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public SendIrCode(BBBB)V
    .locals 3
    .param p1, "a"    # B
    .param p2, "b"    # B
    .param p3, "x"    # B
    .param p4, "y"    # B

    .prologue
    .line 32
    const-string v0, "Dvr"

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

    .line 34
    invoke-static {p1, p2, p3, p4}, Lcom/yyw/ts70xhw/Mcu;->SendxyTouch(IIII)I

    .line 35
    return-void
.end method

.method public SendTouchXY(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public SetType(I)V
    .locals 1
    .param p1, "nType"    # I

    .prologue
    .line 237
    sput p1, Lcom/ts/MainUI/Dvr;->nDvrType:I

    .line 238
    packed-switch p1, :pswitch_data_0

    .line 257
    :pswitch_0
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrZHY;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrZHY;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    .line 261
    :goto_0
    return-void

    .line 242
    :pswitch_1
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrZHY;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrZHY;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    goto :goto_0

    .line 245
    :pswitch_2
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrYSJTW;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    goto :goto_0

    .line 248
    :pswitch_3
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    goto :goto_0

    .line 251
    :pswitch_4
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrZHY;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrZHY;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    goto :goto_0

    .line 254
    :pswitch_5
    new-instance v0, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;-><init>(Lcom/ts/MainUI/Dvr;)V

    sput-object v0, Lcom/ts/MainUI/Dvr;->mDvr:Lcom/ts/MainUI/Dvr;

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
