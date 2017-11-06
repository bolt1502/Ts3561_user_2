.class Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;
.super Lcom/ts/MainUI/Dvr;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Dvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StDvrYSJTWZ"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Dvr;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Dvr;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->this$0:Lcom/ts/MainUI/Dvr;

    invoke-direct {p0}, Lcom/ts/MainUI/Dvr;-><init>()V

    return-void
.end method


# virtual methods
.method public BtnFun(I)I
    .locals 4
    .param p1, "nBtn"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return v2

    .line 195
    :pswitch_0
    const/16 v0, 0x15

    const/16 v1, -0x16

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 198
    :pswitch_1
    const/16 v0, 0x19

    const/16 v1, -0x1a

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 201
    :pswitch_2
    const/4 v0, 0x2

    const/4 v1, -0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 204
    :pswitch_3
    const/4 v0, 0x4

    const/4 v1, -0x5

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 207
    :pswitch_4
    const/4 v0, 0x7

    const/4 v1, -0x8

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 210
    :pswitch_5
    const/16 v0, 0x40

    const/16 v1, -0x41

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 213
    :pswitch_6
    const/16 v0, 0x9

    const/16 v1, -0xa

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTWZ;->SendIrCode(BBBB)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
