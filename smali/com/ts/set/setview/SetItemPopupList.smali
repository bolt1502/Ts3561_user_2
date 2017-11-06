.class public Lcom/ts/set/setview/SetItemPopupList;
.super Ljava/lang/Object;
.source "SetItemPopupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;
    }
.end annotation


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mSel:I

.field private mStrValArr:[Ljava/lang/String;

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [I
    .param p4, "callBack"    # Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/set/setview/SetItemPopupList;->Create(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [Ljava/lang/String;
    .param p4, "callBack"    # Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/set/setview/SetItemPopupList;->Create(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    .line 57
    return-void
.end method

.method private Init(Landroid/content/Context;ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "callBack"    # Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ts/set/setview/SetItemPopupList;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/ts/set/setview/SetItemPopupList;->mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->set_item_popup_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mBtn:Landroid/widget/Button;

    .line 89
    if-eqz p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->val:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mVal:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/ts/set/setview/SetItemPopupList;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public Create(Landroid/content/Context;I[ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [I
    .param p4, "callBack"    # Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_0

    .line 78
    invoke-direct {p0, p1, p2, p4}, Lcom/ts/set/setview/SetItemPopupList;->Init(Landroid/content/Context;ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    .line 80
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    aget v3, p3, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Create(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # I
    .param p3, "valarr"    # [Ljava/lang/String;
    .param p4, "callBack"    # Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    .prologue
    .line 61
    iput-object p3, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2, p4}, Lcom/ts/set/setview/SetItemPopupList;->Init(Landroid/content/Context;ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    .line 63
    return-void
.end method

.method public GetBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/ts/set/setview/SetItemPopupList;->mId:I

    .line 102
    return-void
.end method

.method public SetSel(I)V
    .locals 3
    .param p1, "sel"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    .line 127
    iget v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mVal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    iget v2, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    return-void
.end method

.method public SetVal(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 157
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/set/setview/SetItemPopupList;->ShowGone(Z)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 136
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 137
    .local v7, "location":[I
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    iget-object v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 141
    new-instance v0, Lcom/ts/set/setview/CanPopupMenu;

    iget v1, p0, Lcom/ts/set/setview/SetItemPopupList;->mId:I

    iget-object v2, p0, Lcom/ts/set/setview/SetItemPopupList;->mContext:Landroid/content/Context;

    aget v3, v7, v3

    iget-object v4, p0, Lcom/ts/set/setview/SetItemPopupList;->mStrValArr:[Ljava/lang/String;

    iget v5, p0, Lcom/ts/set/setview/SetItemPopupList;->mSel:I

    iget-object v6, p0, Lcom/ts/set/setview/SetItemPopupList;->mCbClick:Lcom/ts/set/setview/SetItemPopupList$onPopItemClick;

    invoke-direct/range {v0 .. v6}, Lcom/ts/set/setview/CanPopupMenu;-><init>(ILandroid/content/Context;I[Ljava/lang/String;ILcom/ts/set/setview/SetItemPopupList$onPopItemClick;)V

    .line 142
    .local v0, "dlg":Lcom/ts/set/setview/CanPopupMenu;
    invoke-virtual {v0}, Lcom/ts/set/setview/CanPopupMenu;->getDlg()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/ts/set/setview/SetItemPopupList$1;

    invoke-direct {v2, p0}, Lcom/ts/set/setview/SetItemPopupList$1;-><init>(Lcom/ts/set/setview/SetItemPopupList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    return-void
.end method
