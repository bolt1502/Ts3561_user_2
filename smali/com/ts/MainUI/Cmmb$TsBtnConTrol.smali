.class Lcom/ts/MainUI/Cmmb$TsBtnConTrol;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TsBtnConTrol"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public CmmbDn()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xd

    const/16 v3, 0xf2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 109
    return-void
.end method

.method public CmmbEnter()V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0x9

    const/16 v3, 0xf6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 118
    return-void
.end method

.method public CmmbLeft()V
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0x8

    const/16 v3, 0xf7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 112
    return-void
.end method

.method public CmmbList()V
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x4

    const/16 v3, 0xfb

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 103
    return-void
.end method

.method public CmmbReturn()V
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xc

    const/16 v3, 0xf3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 121
    return-void
.end method

.method public CmmbRight()V
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xa

    const/16 v3, 0xf5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 115
    return-void
.end method

.method public CmmbUp()V
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 106
    return-void
.end method

.method public PlayNext()V
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 124
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 126
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xd

    const/16 v3, 0xf2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 127
    return-void
.end method

.method public SendTouch(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 99
    const/16 v0, 0xaa

    const/16 v1, 0x55

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ts/MainUI/Cmmb$TsBtnConTrol;->SendIrCode(IIII)V

    .line 100
    return-void
.end method
