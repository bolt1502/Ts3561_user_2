.class public Lcom/ts/bt/BtSearchActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BtSearchActivity"


# instance fields
.field private bt:Lcom/ts/bt/BtExe;

.field private mAdapter:Lcom/ts/bt/BtSearchAdapter;

.field private mDialId:I

.field private mDialNum:Ljava/lang/String;

.field private mEdit:Landroid/widget/EditText;

.field private mList:Landroid/widget/ListView;

.field private mStrSiTotal:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mToast:Landroid/widget/Toast;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtSearchActivity;)Lcom/ts/bt/BtSearchAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mAdapter:Lcom/ts/bt/BtSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/bt/BtSearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mDialNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/bt/BtSearchActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method


# virtual methods
.method dail(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/ts/bt/BtSearchActivity;->mDialId:I

    .line 123
    sget-object v2, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sget-object v2, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 133
    sget-object v2, Lcom/ts/bt/BtExe;->mListSearch:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ts/bt/BtExe$SearchItem;

    .line 134
    .local v0, "item":Lcom/ts/bt/BtExe$SearchItem;
    if-eqz v0, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u95c1\u89c4\u705a\u9354\u5d86\u6676\u951f\ufffd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "strMsg":Ljava/lang/String;
    iget-object v2, v0, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    iget-object v2, v2, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    iput-object v2, p0, Lcom/ts/bt/BtSearchActivity;->mDialNum:Ljava/lang/String;

    .line 142
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    sget v3, Lcom/ts/MainUI/R$string;->str_bt_dial:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    iget-object v3, v0, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 145
    sget v3, Lcom/ts/MainUI/R$string;->str_bt_ok:I

    new-instance v4, Lcom/ts/bt/BtSearchActivity$3;

    invoke-direct {v4, p0}, Lcom/ts/bt/BtSearchActivity$3;-><init>(Lcom/ts/bt/BtSearchActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 155
    sget v3, Lcom/ts/MainUI/R$string;->str_bt_cancel:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public enterSubWin(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0, v1, v1}, Lcom/ts/bt/BtSearchActivity;->overridePendingTransition(II)V

    .line 166
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_search:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSearchActivity;->setContentView(I)V

    .line 53
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->bt:Lcom/ts/bt/BtExe;

    .line 55
    sget v0, Lcom/ts/MainUI/R$id;->btListSearch:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mList:Landroid/widget/ListView;

    .line 57
    new-instance v0, Lcom/ts/bt/BtSearchAdapter;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mAdapter:Lcom/ts/bt/BtSearchAdapter;

    .line 58
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/bt/BtSearchActivity;->mAdapter:Lcom/ts/bt/BtSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/ts/bt/BtSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/bt/BtSearchActivity$1;-><init>(Lcom/ts/bt/BtSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$id;->search:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mEdit:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/ts/bt/BtSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/bt/BtSearchActivity$2;-><init>(Lcom/ts/bt/BtSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x8

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtSearchActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 177
    invoke-virtual {p0}, Lcom/ts/bt/BtSearchActivity;->resetData()V

    .line 178
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 179
    return-void
.end method

.method resetData()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mDialNum:Ljava/lang/String;

    .line 192
    return-void
.end method

.method protected showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mToast:Landroid/widget/Toast;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/BtSearchActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
