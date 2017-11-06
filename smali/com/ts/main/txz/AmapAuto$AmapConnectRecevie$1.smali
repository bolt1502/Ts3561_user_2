.class Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;
.super Ljava/lang/Thread;
.source "AmapAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;->this$1:Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;

    .line 495
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 506
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
