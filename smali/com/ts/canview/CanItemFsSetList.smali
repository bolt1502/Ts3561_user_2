.class public Lcom/ts/canview/CanItemFsSetList;
.super Ljava/lang/Object;
.source "CanItemFsSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/canview/CanItemFsSetList$onFsSetClick;
    }
.end annotation


# instance fields
.field protected mBtn:Landroid/widget/Button;

.field protected mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

.field protected mIco:Landroid/widget/ImageView;

.field protected mId:I

.field protected mMsgTitle:I

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Lcom/ts/MainUI/R$string;->can_factory_set:I

    invoke-virtual {p0, p1, v0}, Lcom/ts/canview/CanItemFsSetList;->Create(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/ts/canview/CanItemFsSetList;->Create(Landroid/content/Context;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public Create(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I

    .prologue
    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    iput v1, p0, Lcom/ts/canview/CanItemFsSetList;->mMsgTitle:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->can_item_textbtn_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mBtn:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mIco:Landroid/widget/ImageView;

    .line 48
    if-eqz p2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/ts/canview/CanItemFsSetList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    return-void
.end method

.method public SetIdClickListener(ILcom/ts/canview/CanItemFsSetList$onFsSetClick;)V
    .locals 2
    .param p1, "Id"    # I
    .param p2, "cb"    # Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    iput p1, p0, Lcom/ts/canview/CanItemFsSetList;->mId:I

    .line 78
    iput-object p2, p0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    .line 80
    return-void
.end method

.method public SetMsgText(I)V
    .locals 0
    .param p1, "msg"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/ts/canview/CanItemFsSetList;->mMsgTitle:I

    .line 100
    return-void
.end method

.method public SetVal(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 85
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public ShowArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mIco:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mIco:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanItemFsSetList;->ShowGone(Z)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCancel(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ts/canview/CanItemFsSetList$onFsSetClick;->onFsItem(IZ)V

    .line 183
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_tip:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    iget v1, p0, Lcom/ts/canview/CanItemFsSetList;->mMsgTitle:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    sget v1, Lcom/ts/MainUI/R$string;->can_cancel:I

    new-instance v2, Lcom/ts/canview/CanItemFsSetList$1;

    invoke-direct {v2, p0}, Lcom/ts/canview/CanItemFsSetList$1;-><init>(Lcom/ts/canview/CanItemFsSetList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    sget v1, Lcom/ts/MainUI/R$string;->can_confirm:I

    new-instance v2, Lcom/ts/canview/CanItemFsSetList$2;

    invoke-direct {v2, p0}, Lcom/ts/canview/CanItemFsSetList$2;-><init>(Lcom/ts/canview/CanItemFsSetList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/ts/canview/CanItemFsSetList$3;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanItemFsSetList$3;-><init>(Lcom/ts/canview/CanItemFsSetList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 173
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ts/canview/CanItemFsSetList;->mCb:Lcom/ts/canview/CanItemFsSetList$onFsSetClick;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/ts/canview/CanItemFsSetList$onFsSetClick;->onFsItem(IZ)V

    .line 190
    return-void
.end method
