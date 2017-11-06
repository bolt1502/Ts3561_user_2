.class Lcom/ts/main/txz/TxzReg$7$17;
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
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$7$17;->this$1:Lcom/ts/main/txz/TxzReg$7;

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1233
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$7$17;->this$1:Lcom/ts/main/txz/TxzReg$7;

    # getter for: Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;
    invoke-static {v0}, Lcom/ts/main/txz/TxzReg$7;->access$0(Lcom/ts/main/txz/TxzReg$7;)Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/main/txz/TxzReg;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 1236
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$7$17;->this$1:Lcom/ts/main/txz/TxzReg$7;

    # getter for: Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;
    invoke-static {v0}, Lcom/ts/main/txz/TxzReg$7;->access$0(Lcom/ts/main/txz/TxzReg$7;)Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->BackToLaucher()V

    .line 1239
    :cond_0
    return-void
.end method
