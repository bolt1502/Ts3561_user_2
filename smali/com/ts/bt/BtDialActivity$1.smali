.class Lcom/ts/bt/BtDialActivity$1;
.super Ljava/lang/Object;
.source "BtDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtDialActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtDialActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtDialActivity$1;->this$0:Lcom/ts/bt/BtDialActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    const-string v1, ""

    .line 281
    .local v1, "strKey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 282
    .local v0, "id":I
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num1:I

    if-ne v0, v2, :cond_2

    .line 283
    const-string v1, "1"

    .line 312
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/ts/bt/BtDialActivity$1;->this$0:Lcom/ts/bt/BtDialActivity;

    invoke-virtual {v2, v1}, Lcom/ts/bt/BtDialActivity;->addKey(Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void

    .line 284
    :cond_2
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num2:I

    if-ne v0, v2, :cond_3

    .line 285
    const-string v1, "2"

    .line 286
    goto :goto_0

    :cond_3
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num3:I

    if-ne v0, v2, :cond_4

    .line 287
    const-string v1, "3"

    .line 288
    goto :goto_0

    :cond_4
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num4:I

    if-ne v0, v2, :cond_5

    .line 289
    const-string v1, "4"

    .line 290
    goto :goto_0

    :cond_5
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num5:I

    if-ne v0, v2, :cond_6

    .line 291
    const-string v1, "5"

    .line 292
    goto :goto_0

    :cond_6
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num6:I

    if-ne v0, v2, :cond_7

    .line 293
    const-string v1, "6"

    .line 294
    goto :goto_0

    :cond_7
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num7:I

    if-ne v0, v2, :cond_8

    .line 295
    const-string v1, "7"

    .line 296
    goto :goto_0

    :cond_8
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num8:I

    if-ne v0, v2, :cond_9

    .line 297
    const-string v1, "8"

    .line 298
    goto :goto_0

    :cond_9
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num9:I

    if-ne v0, v2, :cond_a

    .line 299
    const-string v1, "9"

    .line 300
    goto :goto_0

    :cond_a
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_numx:I

    if-ne v0, v2, :cond_b

    .line 301
    const-string v1, "*"

    .line 302
    goto :goto_0

    :cond_b
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_num0:I

    if-ne v0, v2, :cond_c

    .line 303
    iget-object v2, p0, Lcom/ts/bt/BtDialActivity$1;->this$0:Lcom/ts/bt/BtDialActivity;

    # getter for: Lcom/ts/bt/BtDialActivity;->mbLongTouch:Z
    invoke-static {v2}, Lcom/ts/bt/BtDialActivity;->access$0(Lcom/ts/bt/BtDialActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v1, "0"

    .line 307
    goto :goto_0

    :cond_c
    sget v2, Lcom/ts/MainUI/R$id;->bt_btn_dial_numj:I

    if-ne v0, v2, :cond_0

    .line 308
    const-string v1, "#"

    goto :goto_0
.end method
