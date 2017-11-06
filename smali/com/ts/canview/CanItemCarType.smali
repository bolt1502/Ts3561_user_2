.class public Lcom/ts/canview/CanItemCarType;
.super Ljava/lang/Object;
.source "CanItemCarType.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# instance fields
.field private mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

.field private mItemPopup:Lcom/ts/canview/CanItemPopupList;

.field private para:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [I
    .param p4, "id"    # I
    .param p5, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/canview/CanItemCarType;->para:I

    .line 22
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    .line 23
    iput-object p5, p0, Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .line 24
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [I
    .param p4, "id"    # I
    .param p5, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    .param p6, "type"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/canview/CanItemCarType;->para:I

    .line 29
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;I)V

    iput-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    .line 30
    iput-object p5, p0, Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .line 31
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/canview/CanItemCarType;->para:I

    .line 36
    iput-object p5, p0, Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .line 37
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    .line 38
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ts/canview/CanItemCarType;)Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mCallBack:Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/canview/CanItemCarType;)Lcom/ts/canview/CanItemPopupList;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/canview/CanItemCarType;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ts/canview/CanItemCarType;->para:I

    return v0
.end method


# virtual methods
.method public GetPopItem()Lcom/ts/canview/CanItemPopupList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItem(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 55
    iput p2, p0, Lcom/ts/canview/CanItemCarType;->para:I

    .line 56
    iget-object v1, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetSel()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->can_cqsx_qdxg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "str":Ljava/lang/String;
    const-string v1, "%s %s ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v4, p2}, Lcom/ts/canview/CanItemPopupList;->GetItemStr(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ts/canview/CanItemCarType;->mItemPopup:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v2}, Lcom/ts/canview/CanItemPopupList;->GetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    sget v2, Lcom/ts/MainUI/R$string;->str_fs_tip:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    sget v2, Lcom/ts/MainUI/R$string;->can_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    sget v2, Lcom/ts/MainUI/R$string;->can_confirm:I

    new-instance v3, Lcom/ts/canview/CanItemCarType$1;

    invoke-direct {v3, p0}, Lcom/ts/canview/CanItemCarType$1;-><init>(Lcom/ts/canview/CanItemCarType;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 76
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOK(I)V
    .locals 0
    .param p1, "param"    # I

    .prologue
    .line 83
    return-void
.end method
