.class public Lcom/ts/can/btobd/CustomDialog;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# instance fields
.field protected mDlg:Landroid/app/AlertDialog;

.field protected mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/ts/can/btobd/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 18
    return-void
.end method


# virtual methods
.method public create(ILandroid/content/Context;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    .line 33
    iget-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 36
    iget-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 37
    iget-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mWindow:Landroid/view/Window;

    .line 39
    iget-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mWindow:Landroid/view/Window;

    const v2, 0x20008

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 44
    iget-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 57
    iput-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    .line 58
    iput-object v1, p0, Lcom/ts/can/btobd/CustomDialog;->mWindow:Landroid/view/Window;

    .line 60
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ts/can/btobd/CustomDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ts/can/btobd/CustomDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDlg()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ts/can/btobd/CustomDialog;->mDlg:Landroid/app/AlertDialog;

    return-object v0
.end method
