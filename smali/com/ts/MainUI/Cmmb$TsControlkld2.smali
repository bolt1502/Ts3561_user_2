.class Lcom/ts/MainUI/Cmmb$TsControlkld2;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TsControlkld2"
.end annotation


# static fields
.field static final KLD_CMMB_CUSTOM2:I = 0x80

.field static final KLD_CMMB__CUSTOM2:I = 0x7f


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$TsControlkld2;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public CmmbDn()V
    .locals 4

    .prologue
    .line 210
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0xf

    const/16 v3, 0xf0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 211
    return-void
.end method

.method public CmmbEnter()V
    .locals 4

    .prologue
    .line 219
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x40

    const/16 v3, 0xbf

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 220
    return-void
.end method

.method public CmmbLeft()V
    .locals 4

    .prologue
    .line 213
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x7

    const/16 v3, 0xf8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 214
    return-void
.end method

.method public CmmbList()V
    .locals 4

    .prologue
    .line 204
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x47

    const/16 v3, 0xb8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 205
    return-void
.end method

.method public CmmbReturn()V
    .locals 4

    .prologue
    .line 222
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x48

    const/16 v3, 0xb7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 223
    return-void
.end method

.method public CmmbRight()V
    .locals 4

    .prologue
    .line 216
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x2

    const/16 v3, 0xfd

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 217
    return-void
.end method

.method public CmmbSearch()V
    .locals 4

    .prologue
    .line 201
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x18

    const/16 v3, 0xe7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 202
    return-void
.end method

.method public CmmbUp()V
    .locals 4

    .prologue
    .line 207
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 208
    return-void
.end method

.method public PlayNext()V
    .locals 4

    .prologue
    .line 225
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 226
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 228
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0xf

    const/16 v3, 0xf0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld2;->SendIrCode(IIII)V

    .line 229
    return-void
.end method
