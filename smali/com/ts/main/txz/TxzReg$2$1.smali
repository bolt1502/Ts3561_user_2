.class Lcom/ts/main/txz/TxzReg$2$1;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg$2;->process(Lcom/txznet/sdk/TXZSenceManager$SenceType;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/main/txz/TxzReg$2;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$2$1;->this$1:Lcom/ts/main/txz/TxzReg$2;

    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$2$1;->this$1:Lcom/ts/main/txz/TxzReg$2;

    # getter for: Lcom/ts/main/txz/TxzReg$2;->this$0:Lcom/ts/main/txz/TxzReg;
    invoke-static {v0}, Lcom/ts/main/txz/TxzReg$2;->access$0(Lcom/ts/main/txz/TxzReg$2;)Lcom/ts/main/txz/TxzReg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/TxzReg;->BackToLaucher()V

    .line 1852
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->cancel()V

    .line 1853
    return-void
.end method
