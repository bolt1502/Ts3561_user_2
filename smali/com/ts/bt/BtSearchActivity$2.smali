.class Lcom/ts/bt/BtSearchActivity$2;
.super Ljava/lang/Object;
.source "BtSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/bt/BtSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtSearchActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtSearchActivity$2;->this$0:Lcom/ts/bt/BtSearchActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 99
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 79
    const-string v0, "BtSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTextChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtExe;->PbSearch(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity$2;->this$0:Lcom/ts/bt/BtSearchActivity;

    # getter for: Lcom/ts/bt/BtSearchActivity;->mAdapter:Lcom/ts/bt/BtSearchAdapter;
    invoke-static {v0}, Lcom/ts/bt/BtSearchActivity;->access$0(Lcom/ts/bt/BtSearchActivity;)Lcom/ts/bt/BtSearchAdapter;

    move-result-object v0

    sget-object v1, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtSearchAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 83
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity$2;->this$0:Lcom/ts/bt/BtSearchActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtSearchActivity;->showMessage(Ljava/lang/String;)V

    .line 84
    return-void
.end method
