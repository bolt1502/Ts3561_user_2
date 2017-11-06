.class Lcom/ts/factoryset/FsKeyActivity$1;
.super Ljava/lang/Object;
.source "FsKeyActivity.java"

# interfaces
.implements Lcom/ts/factoryset/FsInputDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsKeyActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsKeyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsKeyActivity$1;->this$0:Lcom/ts/factoryset/FsKeyActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;)V
    .locals 3
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "FsKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input val = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "5525"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ts/factoryset/FsKeyActivity$1;->this$0:Lcom/ts/factoryset/FsKeyActivity;

    # invokes: Lcom/ts/factoryset/FsKeyActivity;->importKeyData()V
    invoke-static {v0}, Lcom/ts/factoryset/FsKeyActivity;->access$0(Lcom/ts/factoryset/FsKeyActivity;)V

    .line 116
    :cond_0
    return-void
.end method
