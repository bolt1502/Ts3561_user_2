.class Lcom/ts/MainUI/Dvr$StDvrYSJTW;
.super Lcom/ts/MainUI/Dvr;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Dvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StDvrYSJTW"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Dvr;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Dvr;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->this$0:Lcom/ts/MainUI/Dvr;

    invoke-direct {p0}, Lcom/ts/MainUI/Dvr;-><init>()V

    return-void
.end method


# virtual methods
.method public BtnFun(I)I
    .locals 4
    .param p1, "nBtn"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 87
    :pswitch_0
    const/16 v0, 0x15

    const/16 v1, -0x16

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 90
    :pswitch_1
    const/4 v0, 0x4

    const/4 v1, -0x5

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 93
    :pswitch_2
    const/16 v0, 0x19

    const/16 v1, -0x1a

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 96
    :pswitch_3
    const/4 v0, 0x3

    const/4 v1, -0x4

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 100
    :pswitch_4
    const/4 v0, 0x7

    const/4 v1, -0x8

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 103
    :pswitch_5
    const/16 v0, 0x9

    const/16 v1, -0xa

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public PowerOff()I
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x47

    const/16 v3, -0x48

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Dvr$StDvrYSJTW;->SendIrCode(BBBB)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
