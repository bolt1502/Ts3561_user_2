.class Lcom/ts/MainUI/Cmmb$TsTouchYK2;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TsTouchYK2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$TsTouchYK2;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public PlayNext()V
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x0

    const/16 v1, 0xff

    const/16 v2, 0xe

    const/16 v3, 0xf1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsTouchYK2;->SendIrCode(IIII)V

    .line 154
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x4

    const/16 v3, 0xfb

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsTouchYK2;->SendIrCode(IIII)V

    .line 158
    return-void
.end method

.method public SendTouch(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 148
    const/16 v0, 0xaa

    const/16 v1, 0x55

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ts/MainUI/Cmmb$TsTouchYK2;->SendIrCode(IIII)V

    .line 149
    return-void
.end method
