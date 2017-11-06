.class public Lcom/ts/factoryset/FsBaseActivity;
.super Landroid/app/Activity;
.source "FsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FsBaseActivity"


# instance fields
.field baseClick:Landroid/view/View$OnClickListener;

.field private mBtnExport:Landroid/widget/Button;

.field private mBtnImport:Landroid/widget/Button;

.field mResetClick:Landroid/content/DialogInterface$OnClickListener;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/ts/factoryset/FsBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsBaseActivity$1;-><init>(Lcom/ts/factoryset/FsBaseActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mResetClick:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    new-instance v0, Lcom/ts/factoryset/FsBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsBaseActivity$2;-><init>(Lcom/ts/factoryset/FsBaseActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->baseClick:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 126
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->fs_top_btn_import:I

    if-eq v0, v1, :cond_0

    .line 127
    sget v1, Lcom/ts/MainUI/R$id;->fs_top_btn_save:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/ts/factoryset/FsBaseActivity;->onSave()V

    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 133
    :cond_0
    return-void
.end method

.method protected onSave()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method topBtnInit(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 32
    sget v0, Lcom/ts/MainUI/R$id;->fs_top_btn_import:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnImport:Landroid/widget/Button;

    .line 33
    sget v0, Lcom/ts/MainUI/R$id;->fs_top_btn_save:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnExport:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnImport:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnImport:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/factoryset/FsBaseActivity;->baseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnExport:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mBtnExport:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ts/factoryset/FsBaseActivity;->baseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_1
    sget v0, Lcom/ts/MainUI/R$id;->fs_top_title:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mTvTitle:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/ts/factoryset/FsBaseActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :cond_2
    return-void
.end method
