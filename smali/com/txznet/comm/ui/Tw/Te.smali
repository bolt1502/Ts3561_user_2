.class public Lcom/txznet/comm/ui/Tw/Te;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static T:Lcom/txznet/comm/ui/Tw/Te;


# instance fields
.field private T2:Z

.field private T3:I

.field private TN:Z

.field private Te:Lcom/txznet/comm/ui/TR/T;

.field private Tw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/Te;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tw/Te;->T:Lcom/txznet/comm/ui/Tw/Te;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/comm/ui/Tw/Te;->T3:I

    .line 45
    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Te;->T2:Z

    .line 46
    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/Te;->TN:Z

    .line 49
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Te;I)I
    .locals 1
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T3(I)I

    move-result v0

    return v0
.end method

.method private T(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "selection"    # I

    .prologue
    .line 499
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/Te/TN;->T(II)V

    .line 500
    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Te;II)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/Tw/Te;->T(II)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Te;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/Tw/Te;->T3(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/Te;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T3(Z)V

    return-void
.end method

.method private T2(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 491
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/TN;->T(I)V

    .line 492
    return-void
.end method

.method static synthetic T2(Lcom/txznet/comm/ui/Tw/Te;I)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Tw/Te;->TN(I)V

    return-void
.end method

.method private T3(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0xa

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return v0

    .line 391
    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/Te;I)I
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/txznet/comm/ui/Tw/Te;->T3:I

    return p1
.end method

.method public static T3()Lcom/txznet/comm/ui/Tw/Te;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/txznet/comm/ui/Tw/Te;->T:Lcom/txznet/comm/ui/Tw/Te;

    return-object v0
.end method

.method private T3(ILandroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/ui/Te/TN;->T(ILandroid/view/View;)V

    .line 400
    return-void
.end method

.method private T3(Z)V
    .locals 1
    .param p1, "next"    # Z

    .prologue
    .line 507
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/TN;->T(Z)V

    .line 508
    return-void
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/Te;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/Te;->Tw:Z

    return p1
.end method

.method private TN(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 495
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Te/TN;->T3(I)V

    .line 496
    return-void
.end method

.method static synthetic TN(Lcom/txznet/comm/ui/Tw/Te;I)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Tw/Te;->Te(I)V

    return-void
.end method

.method private Te(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 503
    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T3;->T3(I)V

    .line 504
    return-void
.end method

.method static synthetic Te(Lcom/txznet/comm/ui/Tw/Te;I)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/Tw/Te;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T2(I)V

    return-void
.end method

.method private Ty()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->Tw:Z

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.ui.event.button.record"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->Tw:Z

    .line 322
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te$13;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Te$13;-><init>(Lcom/txznet/comm/ui/Tw/Te;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method public T(IIII)Ljava/lang/Object;
    .locals 9
    .param p1, "actionType"    # I
    .param p2, "view"    # I
    .param p3, "listType"    # I
    .param p4, "listIndex"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 238
    iget-boolean v4, p0, Lcom/txznet/comm/ui/Tw/Te;->T2:Z

    if-eqz v4, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-object v8

    .line 241
    :cond_1
    if-nez p1, :cond_3

    .line 242
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 276
    :pswitch_1
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 277
    .local v1, "nextJsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v4, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 278
    const-string v4, "clicktype"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 279
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.display.page"

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 244
    .end local v1    # "nextJsonBuilder":Lcom/txznet/comm/TN/T;
    :pswitch_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.help.ui.detail.open"

    new-instance v7, Lcom/txznet/comm/ui/Tw/Te$12;

    invoke-direct {v7, p0}, Lcom/txznet/comm/ui/Tw/Te$12;-><init>(Lcom/txznet/comm/ui/Tw/Te;)V

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-static {}, Lcom/txznet/comm/T3/T;->T()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/txznet/T3/T/T2;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v3, "startRecordSetting":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txznet/comm/ui/Tw/T3;->Te()V

    goto :goto_0

    .line 259
    .end local v3    # "startRecordSetting":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.txznet.action.openSetting"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    :pswitch_4
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.txznet.txz.record.dismiss.button"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/txznet/comm/ui/Tw/T3;->Te()V

    goto/16 :goto_0

    .line 267
    :pswitch_5
    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Te;->Ty()V

    goto/16 :goto_0

    .line 270
    :pswitch_6
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 271
    .local v0, "jb":Lcom/txznet/comm/TN/T;
    const-string v4, "index"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 272
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.item.selected"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto/16 :goto_0

    .line 283
    .end local v0    # "jb":Lcom/txznet/comm/TN/T;
    :pswitch_7
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 284
    .local v2, "preJsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v4, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 285
    const-string v4, "clicktype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 286
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.display.page"

    invoke-virtual {v2}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto/16 :goto_0

    .line 290
    .end local v2    # "preJsonBuilder":Lcom/txznet/comm/TN/T;
    :pswitch_8
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.display.tip"

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto/16 :goto_0

    .line 294
    :pswitch_9
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "wx.subscribe.qrcode"

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 295
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.list.ontouch"

    const-string v7, "0"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto/16 :goto_0

    .line 301
    :cond_3
    if-ne p1, v7, :cond_0

    .line 302
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 304
    :pswitch_a
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.record.ui.event.list.ontouch"

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method

.method public T(ILandroid/view/View;)Ljava/lang/Object;
    .locals 3
    .param p1, "targetView"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 403
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->T2:Z

    if-eqz v0, :cond_0

    .line 426
    :goto_0
    return-object v2

    .line 406
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 418
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/txznet/comm/ui/Tw/Te$3;-><init>(Lcom/txznet/comm/ui/Tw/Te;ILandroid/view/View;)V

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 408
    :pswitch_0
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te$2;

    invoke-direct {v0, p0, p2}, Lcom/txznet/comm/ui/Tw/Te$2;-><init>(Lcom/txznet/comm/ui/Tw/Te;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public T()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public varargs T(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    const-string v5, "txz.record.ui.event.clearProgress"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.record.ui.event.clearProgress"

    invoke-virtual {v5, v6, v7, v9, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v5, p0, Lcom/txznet/comm/ui/Tw/Te;->Te:Lcom/txznet/comm/ui/TR/T;

    if-nez v5, :cond_1

    .line 206
    :try_start_0
    const-string v5, "com.txznet.txz.module.ui.WinManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    .local v0, "clazzWinManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 208
    .local v3, "instanceMethod":Ljava/lang/reflect/Method;
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, "object":Ljava/lang/Object;
    const-string v5, "mViewStateTransfer"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 210
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txznet/comm/ui/TR/T;

    iput-object v5, p0, Lcom/txznet/comm/ui/Tw/Te;->Te:Lcom/txznet/comm/ui/TR/T;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "clazzWinManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "instanceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/txznet/comm/ui/Tw/Te;->Te:Lcom/txznet/comm/ui/TR/T;

    if-eqz v5, :cond_0

    array-length v5, p3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 216
    iget-object v7, p0, Lcom/txznet/comm/ui/Tw/Te;->Te:Lcom/txznet/comm/ui/TR/T;

    aget-object v5, p3, v8

    check-cast v5, Landroid/view/animation/Animation;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Lcom/txznet/comm/ui/TR/T;->T(Landroid/view/animation/Animation;I)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "send ui event to core error!"

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs T(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/txznet/comm/ui/Tw/Te;->T(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v8

    iget-boolean v8, v8, Lcom/txznet/comm/ui/Te/TN;->T:Z

    if-nez v8, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "jsonBuilder":Lcom/txznet/comm/TN/T;
    const-string v8, "action"

    const-class v9, Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v8, "addMsg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$1;

    invoke-direct {v8, p0, p1}, Lcom/txznet/comm/ui/Tw/Te$1;-><init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "showData error!"

    invoke-static {v8}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "jsonBuilder":Lcom/txznet/comm/TN/T;
    :cond_2
    :try_start_1
    const-string v8, "updateVolume"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 96
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$6;

    invoke-direct {v8, p0, v2}, Lcom/txznet/comm/ui/Tw/Te$6;-><init>(Lcom/txznet/comm/ui/Tw/Te;Lcom/txznet/comm/TN/T;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v8, "snapPage"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$7;

    invoke-direct {v8, p0, v2}, Lcom/txznet/comm/ui/Tw/Te$7;-><init>(Lcom/txznet/comm/ui/Tw/Te;Lcom/txznet/comm/TN/T;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v8, "updateProgress"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 117
    const-string v8, "value"

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 118
    .local v4, "progress":Ljava/lang/Integer;
    const-string v8, "selection"

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 119
    .local v5, "selection":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 120
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$8;

    invoke-direct {v8, p0, v4, v5}, Lcom/txznet/comm/ui/Tw/Te$8;-><init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 130
    .end local v4    # "progress":Ljava/lang/Integer;
    .end local v5    # "selection":Ljava/lang/Integer;
    :cond_5
    const-string v8, "updateState"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 131
    const-string v8, "state"

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 132
    .local v6, "state":Ljava/lang/Integer;
    const-string v8, "type"

    const-class v9, Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 133
    .local v7, "type":Ljava/lang/String;
    const-string v8, "wheelControl"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$9;

    invoke-direct {v8, p0, v6}, Lcom/txznet/comm/ui/Tw/Te$9;-><init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 142
    :cond_6
    if-eqz v6, :cond_0

    .line 143
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$10;

    invoke-direct {v8, p0, v6}, Lcom/txznet/comm/ui/Tw/Te$10;-><init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 153
    .end local v6    # "state":Ljava/lang/Integer;
    .end local v7    # "type":Ljava/lang/String;
    :cond_7
    const-string v8, "onKeyEvent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 154
    const-string v8, "keyEvent"

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v2, v8, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 155
    .local v3, "keyEvent":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive keyEvent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 156
    if-eqz v3, :cond_0

    .line 157
    new-instance v8, Lcom/txznet/comm/ui/Tw/Te$11;

    invoke-direct {v8, p0, v3}, Lcom/txznet/comm/ui/Tw/Te$11;-><init>(Lcom/txznet/comm/ui/Tw/Te;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public T(Z)V
    .locals 5
    .param p1, "disable"    # Z

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->TN:Z

    if-eq v0, p1, :cond_0

    .line 344
    iput-boolean p1, p0, Lcom/txznet/comm/ui/Tw/Te;->TN:Z

    .line 345
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.recordwin2.disableThirdWin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 348
    :cond_0
    return-void
.end method

.method public T(I)Z
    .locals 1
    .param p1, "keyEvent"    # I

    .prologue
    .line 511
    invoke-static {}, Lcom/txznet/comm/ui/TN/T3;->T()Lcom/txznet/comm/ui/TN/T3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/TN/T3;->T(I)Z

    move-result v0

    return v0
.end method

.method public T2()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    const-string v0, "forceUseUI1"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->T2:Z

    .line 336
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.recordwin2.forceUI1"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 337
    return-void
.end method

.method public TN()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/Te;->TN:Z

    return v0
.end method

.method public Te()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te$4;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Te$4;-><init>(Lcom/txznet/comm/ui/Tw/Te;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 521
    return-void
.end method

.method public Tw()V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/txznet/comm/ui/Tw/Te$5;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/Te$5;-><init>(Lcom/txznet/comm/ui/Tw/Te;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    .line 533
    return-void
.end method
