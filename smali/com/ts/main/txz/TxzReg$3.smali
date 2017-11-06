.class Lcom/ts/main/txz/TxzReg$3;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->SetTXZWakeUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$3;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    .line 206
    const-string v0, "TxzReg"

    const-string v1, "txz reinitTXZ ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$3;->this$0:Lcom/ts/main/txz/TxzReg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ts/main/txz/TxzReg;->bInintOK:Z

    .line 208
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$3;->this$0:Lcom/ts/main/txz/TxzReg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ts/main/txz/TxzReg;->bIsConnect:Z

    .line 209
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$3;->this$0:Lcom/ts/main/txz/TxzReg;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/txz/TxzReg;->SetBtState(ILcom/txznet/sdk/TXZCallManager$Contact;)V

    .line 210
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$3;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/TxzReg;->SetTXZState(I)V

    .line 212
    return-void
.end method
