.class Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$3;
.super Ljava/lang/Object;
.source "FsRadioActivity.java"

# interfaces
.implements Lcom/ts/factoryset/FsInputDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$3;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;)V
    .locals 4
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v1, "FsRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Input val = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "i":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 299
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetAMsd(I)I

    .line 300
    iget-object v1, p0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter$3;->this$1:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    const/4 v2, 0x7

    # invokes: Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->updateItem(I)V
    invoke-static {v1, v2}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;->access$1(Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;I)V

    .line 303
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
