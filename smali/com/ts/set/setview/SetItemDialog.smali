.class public Lcom/ts/set/setview/SetItemDialog;
.super Lcom/ts/other/CustomDialog;
.source "SetItemDialog.java"


# static fields
.field public static final BTN_CANCEL:I = 0x11

.field public static final BTN_ENTER:I = 0x10


# instance fields
.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnOK:Landroid/widget/Button;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "texid"    # I
    .param p3, "listense"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 22
    sget v0, Lcom/ts/MainUI/R$layout;->setting_general01_input:I

    invoke-super {p0, v0, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 23
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->setting_general_btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnOK:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnOK:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->set_general_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 25
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnOK:Landroid/widget/Button;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->setting_general_btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnCancle:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnCancle:Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$string;->set_general_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 29
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnCancle:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->setting_general_showinfo:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mTextTitle:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public GetTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ts/set/setview/SetItemDialog;->mTextTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public Hide()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/ts/set/setview/SetItemDialog;->dismiss()V

    .line 41
    return-void
.end method
