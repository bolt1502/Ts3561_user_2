.class public Lcom/ts/canview/CanItemMsgBox;
.super Lcom/ts/other/CustomDialog;
.source "CanItemMsgBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;,
        Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;
    }
.end annotation


# static fields
.field public static final ITEM_CANCEL:I = 0x2

.field public static final ITEM_OK:I = 0x1


# instance fields
.field private mBtnCancel:Lcom/ts/other/ParamButton;

.field private mBtnOK:Lcom/ts/other/ParamButton;

.field protected mCallBack:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

.field protected mCbCancel:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

.field private mParam:I

.field private mVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V
    .locals 0
    .param p1, "param"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "text"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/canview/CanItemMsgBox;->Create(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;)V
    .locals 0
    .param p1, "param"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "text"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
    .param p5, "cbCancel"    # Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/canview/CanItemMsgBox;->Create(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 43
    invoke-virtual {p0, p5}, Lcom/ts/canview/CanItemMsgBox;->SetCancelCallBack(Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;)V

    .line 44
    return-void
.end method


# virtual methods
.method public Create(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V
    .locals 5
    .param p1, "param"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "text"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

    .prologue
    const/4 v4, -0x1

    const v3, -0xff3301

    .line 48
    sget v0, Lcom/ts/MainUI/R$layout;->can_msg_box:I

    invoke-super {p0, v0, p2}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 49
    iput-object p4, p0, Lcom/ts/canview/CanItemMsgBox;->mCallBack:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

    .line 50
    iput p1, p0, Lcom/ts/canview/CanItemMsgBox;->mParam:I

    .line 52
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->box_ok:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    .line 53
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_box_btn_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_box_btn_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 55
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v3, v4}, Lcom/ts/other/ParamButton;->setColorUpDn(II)V

    .line 56
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_confirm:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnOK:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->box_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    .line 60
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_box_btn_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_box_btn_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 62
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v3, v4}, Lcom/ts/other/ParamButton;->setColorUpDn(II)V

    .line 63
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$string;->can_cancel:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mBtnCancel:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->box_text:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mVal:Landroid/widget/TextView;

    .line 68
    if-eqz p3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ts/canview/CanItemMsgBox;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public SetCancelCallBack(Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;)V
    .locals 0
    .param p1, "cancel"    # Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ts/canview/CanItemMsgBox;->mCbCancel:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/ts/canview/CanItemMsgBox;->dismiss()V

    .line 90
    iget-object v1, p0, Lcom/ts/canview/CanItemMsgBox;->mCbCancel:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ts/canview/CanItemMsgBox;->mCbCancel:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;

    iget v2, p0, Lcom/ts/canview/CanItemMsgBox;->mParam:I

    invoke-interface {v1, v2}, Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;->onCancel(I)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p0}, Lcom/ts/canview/CanItemMsgBox;->dismiss()V

    .line 98
    iget-object v1, p0, Lcom/ts/canview/CanItemMsgBox;->mCallBack:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/ts/canview/CanItemMsgBox;->mCallBack:Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;

    iget v2, p0, Lcom/ts/canview/CanItemMsgBox;->mParam:I

    invoke-interface {v1, v2}, Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;->onOK(I)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
