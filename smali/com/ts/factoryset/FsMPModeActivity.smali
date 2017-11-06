.class public Lcom/ts/factoryset/FsMPModeActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsMPModeActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FsMPModeActivity"


# instance fields
.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnExportSd:Lcom/ts/other/ParamButton;

.field private mBtnExportUsb:Lcom/ts/other/ParamButton;

.field private mBtnOK:Landroid/widget/Button;

.field private mDlg:Lcom/ts/factoryset/FsInputDlg;

.field private mEditVal:Landroid/widget/EditText;

.field private m_Id:I

.field private onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/ts/factoryset/FsMPModeActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsMPModeActivity$1;-><init>(Lcom/ts/factoryset/FsMPModeActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsMPModeActivity;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->m_Id:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "ret":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    .local v0, "id":I
    sget v2, Lcom/ts/MainUI/R$id;->fsmp_export_sd:I

    if-ne v0, v2, :cond_1

    .line 88
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->ExportToSd(I)I

    move-result v1

    .line 89
    const-string v2, "FsMPModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FtSetExportToSd(0) ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 102
    const-string v2, "\u5bfc\u51fa\u5931\u8d25"

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsMPModeActivity;->showMsg(Ljava/lang/String;)V

    .line 109
    :goto_1
    return-void

    .line 90
    :cond_1
    sget v2, Lcom/ts/MainUI/R$id;->fsmp_export_usb:I

    if-ne v0, v2, :cond_0

    .line 95
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->ExportToSd(I)I

    move-result v1

    .line 96
    const-string v2, "FsMPModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FtSetExportToSd(1) ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    const-string v2, "\u5bfc\u51fa\u6210\u529f"

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsMPModeActivity;->showMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_mpmode:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMPModeActivity;->setContentView(I)V

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->str_fsmain_mpmode:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMPModeActivity;->topBtnInit(I)V

    .line 68
    sget v0, Lcom/ts/MainUI/R$id;->fsmp_export_sd:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMPModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mBtnExportSd:Lcom/ts/other/ParamButton;

    .line 69
    iget-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mBtnExportSd:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Lcom/ts/MainUI/R$id;->fsmp_export_usb:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsMPModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mBtnExportUsb:Lcom/ts/other/ParamButton;

    .line 72
    iget-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mBtnExportUsb:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v0, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v0}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 116
    return-void
.end method

.method showInputBox()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ts/factoryset/FsMPModeActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    iget-object v1, p0, Lcom/ts/factoryset/FsMPModeActivity;->onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    .line 121
    return-void
.end method

.method showMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method
