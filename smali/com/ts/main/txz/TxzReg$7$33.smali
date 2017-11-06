.class Lcom/ts/main/txz/TxzReg$7$33;
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
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$7$33;->this$1:Lcom/ts/main/txz/TxzReg$7;

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1500
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$7$33;->this$1:Lcom/ts/main/txz/TxzReg$7;

    # getter for: Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg$7;->access$0(Lcom/ts/main/txz/TxzReg$7;)Lcom/ts/main/txz/TxzReg;

    move-result-object v1

    iget v1, v1, Lcom/ts/main/txz/TxzReg;->mHz:I

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Radio;->TuneBandFq(II)I

    .line 1501
    return-void
.end method
