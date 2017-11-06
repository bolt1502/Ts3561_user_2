.class Lcom/ts/main/txz/Wrc$1;
.super Ljava/lang/Object;
.source "Wrc.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;


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
    iput-object p1, p0, Lcom/ts/main/txz/Wrc$1;->this$0:Lcom/ts/main/txz/Wrc;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUuidFilter()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/util/UUID;

    const/4 v2, 0x0

    .line 85
    const-string v3, "00001C00-D102-11E1-9B23-00025b01aab2"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 86
    const-string v3, "0000474d-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScanError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 113
    const-string v0, ""

    .line 114
    .local v0, "message":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 116
    :sswitch_0
    const-string v0, "\u8be5\u8bbe\u5907\u4e0d\u652f\u6301\u65b9\u63a7"

    .line 117
    goto :goto_0

    .line 119
    :sswitch_1
    const-string v0, "\u84dd\u7259\u672a\u5f00\u542f"

    .line 120
    goto :goto_0

    .line 122
    :sswitch_2
    const-string v0, "WrcManager.ScanCallback method getWrcScanUUID() \u672a\u5b9e\u73b0 \u8bf7\u68c0\u67e5"

    .line 123
    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2378 -> :sswitch_2
    .end sparse-switch
.end method

.method public onWrcScan(Lnet/easyconn/platform/wrc/core/WrcDevice;)V
    .locals 2
    .param p1, "device"    # Lnet/easyconn/platform/wrc/core/WrcDevice;

    .prologue
    .line 101
    const-string v0, "lh"

    const-string v1, "scan device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/Wrc$1;->this$0:Lcom/ts/main/txz/Wrc;

    # getter for: Lcom/ts/main/txz/Wrc;->mWrcCallback:Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;
    invoke-static {v1}, Lcom/ts/main/txz/Wrc;->access$0(Lcom/ts/main/txz/Wrc;)Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->connectWrc(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V

    .line 104
    return-void
.end method
