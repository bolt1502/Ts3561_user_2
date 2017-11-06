.class Lcom/txznet/T3/T/Te$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/Te;->T2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/Te;

.field private T2:I

.field private T3:Ljava/lang/CharSequence;

.field private TN:I


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/Te;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    invoke-static {v1}, Lcom/txznet/T3/T/Te;->T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/txznet/T3/T/Te$1;->T2:I

    .line 61
    iget-object v1, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    invoke-static {v1}, Lcom/txznet/T3/T/Te;->T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/txznet/T3/T/Te$1;->TN:I

    .line 62
    iget-object v1, p0, Lcom/txznet/T3/T/Te$1;->T3:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 63
    iget v1, p0, Lcom/txznet/T3/T/Te$1;->T2:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/txznet/T3/T/Te$1;->TN:I

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 64
    iget v0, p0, Lcom/txznet/T3/T/Te$1;->T2:I

    .line 65
    .local v0, "tempSelection":I
    iget-object v1, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    invoke-static {v1}, Lcom/txznet/T3/T/Te;->T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    invoke-static {v1}, Lcom/txznet/T3/T/Te;->T(Lcom/txznet/T3/T/Te;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 68
    .end local v0    # "tempSelection":I
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/txznet/T3/T/Te$1;->T3:Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lcom/txznet/T3/T/Te$1;->T3:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/txznet/T3/T/Te$1;->T:Lcom/txznet/T3/T/Te;

    iget-object v0, v0, Lcom/txznet/T3/T/Te;->T:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eb2\uff0c\u60a8\u5df2\u8f93\u5165"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/T3/T/Te$1;->T3:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u5b57\u7b26"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    :cond_0
    return-void
.end method
