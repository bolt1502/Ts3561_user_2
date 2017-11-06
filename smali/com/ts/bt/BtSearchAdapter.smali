.class Lcom/ts/bt/BtSearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtSearchActivity.java"


# instance fields
.field public layoutInflater:Landroid/view/LayoutInflater;

.field public mSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private nSel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/bt/BtSearchAdapter;->nSel:I

    .line 205
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ts/bt/BtSearchAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 206
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 272
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 221
    move-object v2, p2

    .line 222
    .local v2, "view":Landroid/view/View;
    const-string v3, "getView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "index = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/ts/bt/BtSearchAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/ts/MainUI/R$layout;->bt_search_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 236
    sget v3, Lcom/ts/MainUI/R$id;->btPbName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, "tvName":Landroid/widget/TextView;
    sget v3, Lcom/ts/MainUI/R$id;->btPbNum:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, "tvNum":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 241
    iget-object v3, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/bt/BtExe$SearchItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v3, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ts/bt/BtExe$SearchItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$SearchItem;->pb:Lcom/ts/bt/BtExe$PbItem;

    iget-object v3, v3, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_0
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x33b

    const/16 v5, 0x5b

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v2

    .line 246
    :cond_0
    const-string v3, "10086"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setSel(I)V
    .locals 0
    .param p1, "sel"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/ts/bt/BtSearchAdapter;->nSel:I

    .line 217
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$SearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$SearchItem;>;"
    iput-object p1, p0, Lcom/ts/bt/BtSearchAdapter;->mSearchList:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {p0}, Lcom/ts/bt/BtSearchAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method
