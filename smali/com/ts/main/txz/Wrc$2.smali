.class Lcom/ts/main/txz/Wrc$2;
.super Ljava/lang/Object;
.source "Wrc.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/txz/Wrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/Wrc;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/Wrc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/Wrc$2;->this$0:Lcom/ts/main/txz/Wrc;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 0
    .param p1, "device"    # Lnet/easyconn/platform/wrc/core/WrcDevice;

    .prologue
    .line 277
    return-void
.end method

.method public onConnected(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 3
    .param p1, "device"    # Lnet/easyconn/platform/wrc/core/WrcDevice;

    .prologue
    .line 136
    const-string v0, "lh"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/ts/main/txz/Wrc$2;->this$0:Lcom/ts/main/txz/Wrc;

    # getter for: Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/ts/main/txz/Wrc;->access$1(Lcom/ts/main/txz/Wrc;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/Wrc$2;->this$0:Lcom/ts/main/txz/Wrc;

    # getter for: Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/Wrc;->access$1(Lcom/ts/main/txz/Wrc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->wrc_connect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method

.method public onDisconnected(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 2
    .param p1, "device"    # Lnet/easyconn/platform/wrc/core/WrcDevice;

    .prologue
    .line 141
    const-string v0, "lh"

    const-string v1, "diconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/Wrc;->startScan()V

    .line 147
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    .local v0, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 288
    :sswitch_0
    const-string v0, "\u8fde\u63a5\u8bbe\u5907\u4e0d\u5b58\u5728"

    .line 289
    goto :goto_0

    .line 291
    :sswitch_1
    const-string v0, "\u5df2\u6709\u8fde\u63a5\u8bbe\u5907\u5b58\u5728,\u8bf7\u5148\u65ad\u5f00\u8fde\u63a5"

    .line 292
    goto :goto_0

    .line 294
    :sswitch_2
    const-string v0, "UUID\u9519\u8bef,\u8bf7\u68c0\u67e5 WrcManager.ScanCallback getWrcScanUUID() \u6240\u63d0\u4f9b\u7684UUID"

    .line 295
    goto :goto_0

    .line 297
    :sswitch_3
    const-string v0, "WrcManager.ScanCallback method getWrcScanUUID() \u672a\u5b9e\u73b0"

    .line 298
    goto :goto_0

    .line 300
    :sswitch_4
    const-string v0, "\u5305\u540d\u672a\u5907\u6848"

    .line 301
    goto :goto_0

    .line 303
    :sswitch_5
    const-string v0, "\u65e0\u6548\u7684 app key"

    .line 304
    goto :goto_0

    .line 306
    :sswitch_6
    const-string v0, "\u7f3a\u5c11\u5e94\u7528\u5305\u540d"

    .line 307
    goto :goto_0

    .line 309
    :sswitch_7
    const-string v0, "\u7f3a\u5c11\u5e94\u7528\u5bc6\u94a5"

    .line 310
    goto :goto_0

    .line 312
    :sswitch_8
    const-string v0, "\u7f3a\u5931\u9879\u76ee\u7f16\u53f7"

    .line 313
    goto :goto_0

    .line 315
    :sswitch_9
    const-string v0, "\u65e0\u6548\u7684\u9879\u76ee\u7f16\u53f7"

    .line 316
    goto :goto_0

    .line 318
    :sswitch_a
    const-string v0, "\u5305\u540d\u4e0d\u5c5e\u4e8e\u9879\u76ee\u7f16\u53f7"

    .line 319
    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x2329 -> :sswitch_4
        0x232a -> :sswitch_5
        0x232b -> :sswitch_6
        0x232c -> :sswitch_7
        0x2333 -> :sswitch_8
        0x2334 -> :sswitch_9
        0x2335 -> :sswitch_a
        0x2378 -> :sswitch_3
        0x2379 -> :sswitch_2
    .end sparse-switch
.end method

.method public onWrcKeyEvent(BB)V
    .locals 6
    .param p1, "keyCode"    # B
    .param p2, "action"    # B

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x2c

    const/16 v3, 0x14

    const/16 v1, 0x13

    const/4 v2, 0x1

    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 268
    :goto_0
    :pswitch_0
    return-void

    .line 160
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 162
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUartDbg()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 164
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, "lh"

    const-string v1, "left_up_long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :sswitch_1
    packed-switch p2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 184
    :pswitch_5
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUartDbg()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 186
    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {v3}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 201
    :sswitch_2
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 203
    :pswitch_7
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUartDbg()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 205
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 213
    :pswitch_8
    const-string v0, "lh"

    const-string v1, "right_up_long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :sswitch_3
    packed-switch p2, :pswitch_data_3

    :pswitch_9
    goto :goto_0

    .line 223
    :pswitch_a
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUartDbg()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 225
    invoke-static {v5}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 228
    :cond_3
    invoke-static {v4}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0

    .line 240
    :sswitch_4
    packed-switch p2, :pswitch_data_4

    goto :goto_0

    .line 242
    :pswitch_b
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    sget v0, Lcom/ts/bt/BtExe;->mCallSta:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 243
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->answer()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iget v0, v0, Lcom/ts/MainUI/Evc;->PhoneState:I

    if-ne v0, v2, :cond_5

    .line 247
    iget-object v0, p0, Lcom/ts/main/txz/Wrc$2;->this$0:Lcom/ts/main/txz/Wrc;

    # getter for: Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/ts/main/txz/Wrc;->access$1(Lcom/ts/main/txz/Wrc;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/ts/main/common/PhoneUtils;->answerCall(Landroid/telephony/TelephonyManager;)V

    goto/16 :goto_0

    .line 249
    :cond_5
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iget v0, v0, Lcom/ts/MainUI/Evc;->PhoneState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 251
    iget-object v0, p0, Lcom/ts/main/txz/Wrc$2;->this$0:Lcom/ts/main/txz/Wrc;

    # getter for: Lcom/ts/main/txz/Wrc;->myContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/ts/main/txz/Wrc;->access$1(Lcom/ts/main/txz/Wrc;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/ts/main/common/PhoneUtils;->rejectCall(Landroid/telephony/TelephonyManager;)V

    goto/16 :goto_0

    .line 253
    :cond_6
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->hangup()V

    goto/16 :goto_0

    .line 257
    :cond_7
    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 262
    :sswitch_5
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d -> :sswitch_5
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
    .end sparse-switch

    .line 160
    :pswitch_data_0
    .packed-switch -0x5f
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 182
    :pswitch_data_1
    .packed-switch -0x5f
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 201
    :pswitch_data_2
    .packed-switch -0x5f
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 221
    :pswitch_data_3
    .packed-switch -0x5f
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 240
    :pswitch_data_4
    .packed-switch -0x5f
        :pswitch_b
    .end packed-switch
.end method
