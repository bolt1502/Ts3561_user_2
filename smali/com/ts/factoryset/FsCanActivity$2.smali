.class Lcom/ts/factoryset/FsCanActivity$2;
.super Ljava/lang/Object;
.source "FsCanActivity.java"

# interfaces
.implements Lcom/ts/factoryset/FsInputDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsCanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsCanActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsCanActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsCanActivity$2;->this$0:Lcom/ts/factoryset/FsCanActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;)V
    .locals 4
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v1, "FsCanActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Input val = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "i":I
    iget-object v1, p0, Lcom/ts/factoryset/FsCanActivity$2;->this$0:Lcom/ts/factoryset/FsCanActivity;

    # getter for: Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
    invoke-static {v1}, Lcom/ts/factoryset/FsCanActivity;->access$1(Lcom/ts/factoryset/FsCanActivity;)Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->setSel(I)V

    .line 242
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
