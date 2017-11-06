.class Lcom/ts/main/common/MainSet$1;
.super Ljava/lang/Thread;
.source "MainSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/MainSet;->bCheckFist()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainSet;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainSet$1;->this$0:Lcom/ts/main/common/MainSet;

    .line 465
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Lcom/ts/main/common/MainSet$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 476
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
