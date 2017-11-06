.class Lcom/ts/main/txz/TxzReg$7$32;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg$7;->onCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/main/txz/TxzReg$7;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$7$32;->this$1:Lcom/ts/main/txz/TxzReg$7;

    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1459
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1460
    const/4 v1, 0x2

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1462
    :cond_0
    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$7$32;->this$1:Lcom/ts/main/txz/TxzReg$7;

    # getter for: Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg$7;->access$0(Lcom/ts/main/txz/TxzReg$7;)Lcom/ts/main/txz/TxzReg;

    move-result-object v1

    iget v1, v1, Lcom/ts/main/txz/TxzReg;->fhz:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1463
    .local v0, "nFm":I
    const-string v1, "TxzReg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_RECOGNIZE_CMD nFm =="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-static {v4, v0}, Lcom/yyw/ts70xhw/Radio;->TuneBandFq(II)I

    .line 1467
    return-void
.end method
