.class Lcom/ts/MainUI/Cmmb$TsControlkld;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TsControlkld"
.end annotation


# static fields
.field static final KLD_CMMB_CUSTOM:I = 0x80

.field static final KLD_CMMB__CUSTOM:I = 0x7f


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$TsControlkld;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public CmmbDn()V
    .locals 4

    .prologue
    .line 175
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0xf

    const/16 v3, 0xf0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 176
    return-void
.end method

.method public CmmbEnter()V
    .locals 4

    .prologue
    .line 184
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x40

    const/16 v3, 0xbf

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 185
    return-void
.end method

.method public CmmbLeft()V
    .locals 4

    .prologue
    .line 178
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x7

    const/16 v3, 0xf8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 179
    return-void
.end method

.method public CmmbList()V
    .locals 4

    .prologue
    .line 169
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x47

    const/16 v3, 0xb8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 170
    return-void
.end method

.method public CmmbReturn()V
    .locals 4

    .prologue
    .line 187
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x48

    const/16 v3, 0xb7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 188
    return-void
.end method

.method public CmmbRight()V
    .locals 4

    .prologue
    .line 181
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x2

    const/16 v3, 0xfd

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 182
    return-void
.end method

.method public CmmbSearch()V
    .locals 4

    .prologue
    .line 166
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x18

    const/16 v3, 0xe7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 167
    return-void
.end method

.method public CmmbUp()V
    .locals 4

    .prologue
    .line 172
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x5

    const/16 v3, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 173
    return-void
.end method

.method public PlayNext()V
    .locals 4

    .prologue
    .line 190
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/16 v2, 0x45

    const/16 v3, 0xba

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 191
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 193
    const/16 v0, 0x80

    const/16 v1, 0x7f

    const/4 v2, 0x1

    const/16 v3, 0xfe

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$TsControlkld;->SendIrCode(IIII)V

    .line 194
    return-void
.end method
