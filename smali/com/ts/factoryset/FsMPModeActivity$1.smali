.class Lcom/ts/factoryset/FsMPModeActivity$1;
.super Ljava/lang/Object;
.source "FsMPModeActivity.java"

# interfaces
.implements Lcom/ts/factoryset/FsInputDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsMPModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsMPModeActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsMPModeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsMPModeActivity$1;->this$0:Lcom/ts/factoryset/FsMPModeActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;)V
    .locals 4
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v1, "FsMPModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Input val = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "ret":I
    const-string v1, "1001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->Destroy()I

    .line 39
    const-string v1, "FsMPModeActivity"

    const-string v2, "FtSetDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "2002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/ts/factoryset/FsMPModeActivity$1;->this$0:Lcom/ts/factoryset/FsMPModeActivity;

    # getter for: Lcom/ts/factoryset/FsMPModeActivity;->m_Id:I
    invoke-static {v1}, Lcom/ts/factoryset/FsMPModeActivity;->access$0(Lcom/ts/factoryset/FsMPModeActivity;)I

    move-result v1

    sget v2, Lcom/ts/MainUI/R$id;->fsmp_export_sd:I

    if-ne v1, v2, :cond_2

    .line 46
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->ExportToSd(I)I

    move-result v0

    .line 47
    const-string v1, "FsMPModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FtSetExportToSd ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->ExportToSd(I)I

    move-result v0

    .line 53
    const-string v1, "FsMPModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FtSetExportToUSB ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
