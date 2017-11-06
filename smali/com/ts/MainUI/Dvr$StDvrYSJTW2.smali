.class Lcom/ts/MainUI/Dvr$StDvrYSJTW2;
.super Lcom/ts/MainUI/Dvr;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Dvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StDvrYSJTW2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Dvr;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Dvr;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->this$0:Lcom/ts/MainUI/Dvr;

    invoke-direct {p0}, Lcom/ts/MainUI/Dvr;-><init>()V

    return-void
.end method


# virtual methods
.method public BtnFun(I)I
    .locals 4
    .param p1, "nBtn"    # I

    .prologue
    const/16 v3, 0x10

    const/16 v2, -0x11

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 120
    :pswitch_0
    const/16 v0, 0x59

    const/16 v1, -0x5a

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 123
    :pswitch_1
    const/16 v0, 0x16

    const/16 v1, -0x17

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 126
    :pswitch_2
    const/16 v0, 0x8

    const/16 v1, -0x9

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 129
    :pswitch_3
    const/16 v0, 0x54

    const/16 v1, -0x55

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 132
    :pswitch_4
    const/16 v0, 0x1c

    const/16 v1, -0x1d

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 135
    :pswitch_5
    const/16 v0, 0x53

    const/16 v1, -0x54

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    goto :goto_0

    .line 117
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
    .line 141
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x47

    const/16 v3, -0x48

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Dvr$StDvrYSJTW2;->SendIrCode(BBBB)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method
