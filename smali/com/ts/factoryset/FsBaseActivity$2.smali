.class Lcom/ts/factoryset/FsBaseActivity$2;
.super Ljava/lang/Object;
.source "FsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsBaseActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsBaseActivity$2;->this$0:Lcom/ts/factoryset/FsBaseActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 67
    .local v1, "id":I
    sget v4, Lcom/ts/MainUI/R$id;->fs_top_btn_import:I

    if-ne v1, v4, :cond_4

    .line 69
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->LoadFromSd()I

    move-result v2

    .line 70
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 71
    .local v3, "text":I
    if-nez v2, :cond_1

    .line 73
    sget v3, Lcom/ts/MainUI/R$string;->str_fs_import_faild:I

    .line 84
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ts/factoryset/FsBaseActivity$2;->this$0:Lcom/ts/factoryset/FsBaseActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "build":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/ts/MainUI/R$string;->str_fs_tip:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 88
    if-nez v2, :cond_3

    .line 90
    sget v4, Lcom/ts/MainUI/R$string;->str_fsmp_ok:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 98
    const-string v4, "FsBaseActivity"

    const-string v5, "************FtSetLoadFromSd************"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "build":Landroid/app/AlertDialog$Builder;
    .end local v2    # "ret":I
    .end local v3    # "text":I
    :cond_0
    :goto_2
    return-void

    .line 75
    .restart local v2    # "ret":I
    .restart local v3    # "text":I
    :cond_1
    const/4 v4, 0x2

    if-gt v2, v4, :cond_2

    .line 77
    sget v3, Lcom/ts/MainUI/R$string;->str_fs_sd_import_reset:I

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    sget v3, Lcom/ts/MainUI/R$string;->str_fs_usb_import_reset:I

    goto :goto_0

    .line 94
    .restart local v0    # "build":Landroid/app/AlertDialog$Builder;
    :cond_3
    sget v4, Lcom/ts/MainUI/R$string;->str_fs_reset:I

    iget-object v5, p0, Lcom/ts/factoryset/FsBaseActivity$2;->this$0:Lcom/ts/factoryset/FsBaseActivity;

    iget-object v5, v5, Lcom/ts/factoryset/FsBaseActivity;->mResetClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 99
    .end local v0    # "build":Landroid/app/AlertDialog$Builder;
    .end local v2    # "ret":I
    .end local v3    # "text":I
    :cond_4
    sget v4, Lcom/ts/MainUI/R$id;->fs_top_btn_save:I

    if-ne v1, v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/ts/factoryset/FsBaseActivity$2;->this$0:Lcom/ts/factoryset/FsBaseActivity;

    invoke-virtual {v4}, Lcom/ts/factoryset/FsBaseActivity;->onSave()V

    .line 102
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 103
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ts/MainUI/Evc;->SetMicGain()V

    .line 105
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ts/factoryset/FsBaseActivity$2;->this$0:Lcom/ts/factoryset/FsBaseActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    sget v5, Lcom/ts/MainUI/R$string;->str_fs_tip:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 107
    sget v5, Lcom/ts/MainUI/R$string;->str_fs_savereset:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 109
    sget v5, Lcom/ts/MainUI/R$string;->str_fs_reset:I

    new-instance v6, Lcom/ts/factoryset/FsBaseActivity$2$1;

    invoke-direct {v6, p0}, Lcom/ts/factoryset/FsBaseActivity$2$1;-><init>(Lcom/ts/factoryset/FsBaseActivity$2;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method
