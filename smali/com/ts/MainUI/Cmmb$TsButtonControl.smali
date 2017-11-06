.class Lcom/ts/MainUI/Cmmb$TsButtonControl;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TsButtonControl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$TsButtonControl;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public CmmbDn()V
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xd

    const/16 v3, 0xf2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 76
    return-void
.end method

.method public CmmbEnter()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0x9

    const/16 v3, 0xf6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 85
    return-void
.end method

.method public CmmbLeft()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0x8

    const/16 v3, 0xf7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 79
    return-void
.end method

.method public CmmbList()V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x4

    const/16 v3, 0xfb

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 70
    return-void
.end method

.method public CmmbReturn()V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xc

    const/16 v3, 0xf3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 88
    return-void
.end method

.method public CmmbRight()V
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xa

    const/16 v3, 0xf5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 82
    return-void
.end method

.method public CmmbUp()V
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 73
    return-void
.end method

.method public PlayNext()V
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 91
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    const/16 v1, 0xef

    const/16 v2, 0xd

    const/16 v3, 0xf2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsButtonControl;->SendIrCode(IIII)V

    .line 94
    return-void
.end method

.method public SendTouch(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 66
    return-void
.end method
