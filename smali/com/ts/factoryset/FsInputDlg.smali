.class public Lcom/ts/factoryset/FsInputDlg;
.super Lcom/ts/other/CustomDialog;
.source "FsInputDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsInputDlg$onInputOK;
    }
.end annotation


# instance fields
.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnOK:Landroid/widget/Button;

.field private mEditVal:Landroid/widget/EditText;

.field private mOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/factoryset/FsInputDlg$onInputOK;
    .param p3, "isnumber"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/factoryset/FsInputDlg$onInputOK;
    .param p3, "isnumber"    # Z

    .prologue
    .line 39
    sget v0, Lcom/ts/MainUI/R$layout;->fs_mp_inputbox:I

    invoke-super {p0, v0, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 41
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mWindow:Landroid/view/Window;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 43
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->fsmp_input_val:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mEditVal:Landroid/widget/EditText;

    .line 45
    if-nez p3, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mEditVal:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->fsmp_ok:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mBtnOK:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->fsmp_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mBtnCancle:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object p2, p0, Lcom/ts/factoryset/FsInputDlg;->mOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 60
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/ts/factoryset/FsInputDlg;->mEditVal:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 66
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->fsmp_ok:I

    if-ne v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/ts/factoryset/FsInputDlg;->dismiss()V

    .line 68
    iget-object v1, p0, Lcom/ts/factoryset/FsInputDlg;->mOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/ts/factoryset/FsInputDlg;->mOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    iget-object v2, p0, Lcom/ts/factoryset/FsInputDlg;->mEditVal:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ts/factoryset/FsInputDlg$onInputOK;->onOK(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->fsmp_cancel:I

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/ts/factoryset/FsInputDlg;->dismiss()V

    goto :goto_0
.end method
