.class Lcom/ts/MainUI/Dvr$StDvrZHY;
.super Lcom/ts/MainUI/Dvr;
.source "Dvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Dvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StDvrZHY"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Dvr;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Dvr;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ts/MainUI/Dvr$StDvrZHY;->this$0:Lcom/ts/MainUI/Dvr;

    invoke-direct {p0}, Lcom/ts/MainUI/Dvr;-><init>()V

    return-void
.end method


# virtual methods
.method public Calibrilate()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 156
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 157
    .local v6, "year":I
    add-int/lit16 v6, v6, -0x7d0

    .line 158
    int-to-byte v5, v6

    .line 159
    .local v5, "ubSendData":B
    const/16 v7, -0x60

    const/16 v8, 0x5f

    rsub-int v9, v5, 0xff

    int-to-byte v9, v9

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 161
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 162
    .local v4, "month":I
    int-to-byte v5, v4

    .line 163
    const/16 v7, -0x5f

    const/16 v8, 0x5e

    rsub-int v9, v5, 0xff

    int-to-byte v9, v9

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 165
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 166
    .local v2, "day":I
    int-to-byte v5, v2

    .line 167
    const/16 v7, -0x5e

    const/16 v8, 0x5d

    rsub-int v9, v5, 0xff

    int-to-byte v9, v9

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 169
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 170
    .local v3, "hour":I
    int-to-byte v5, v3

    .line 171
    const/16 v7, -0x5d

    const/16 v8, 0x5c

    rsub-int v9, v5, 0xff

    int-to-byte v9, v9

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 174
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 175
    .local v0, "Minute":I
    int-to-byte v5, v0

    .line 176
    const/16 v7, -0x5c

    const/16 v8, 0x5b

    rsub-int v9, v5, 0xff

    int-to-byte v9, v9

    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 177
    return v10
.end method

.method public SendTouchXY(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 150
    const/16 v0, -0x56

    const/16 v1, 0x55

    int-to-byte v2, p1

    int-to-byte v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Dvr$StDvrZHY;->SendIrCode(BBBB)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
