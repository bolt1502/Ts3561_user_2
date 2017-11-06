.class Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BtPhoneBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtPhoneBookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PBListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$PbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectIdx:I

.field final synthetic this$0:Lcom/ts/bt/BtPhoneBookActivity;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtPhoneBookActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 213
    iput-object p1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    iput v1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mSelectIdx:I

    .line 215
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    iput v1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mSelectIdx:I

    .line 217
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 304
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelect()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mSelectIdx:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "holder":Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 235
    new-instance v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;-><init>(Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;)V

    .line 236
    .restart local v2    # "holder":Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/ts/MainUI/R$layout;->bt_phonebook_item:I

    .line 237
    const/4 v8, 0x0

    .line 236
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 239
    sget v6, Lcom/ts/MainUI/R$id;->item_phonebook_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 238
    iput-object v6, v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 241
    sget v6, Lcom/ts/MainUI/R$id;->item_phonebook_number:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 240
    iput-object v6, v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;->phoneTextView:Landroid/widget/TextView;

    .line 242
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/16 v7, 0x2ab

    const/16 v8, 0x5b

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    :goto_0
    const-string v4, ""

    .line 249
    .local v4, "name":Ljava/lang/String;
    const-string v5, ""

    .line 250
    .local v5, "number":Ljava/lang/String;
    const-string v0, ""

    .line 251
    .local v0, "first_name":Ljava/lang/String;
    const-string v3, ""

    .line 252
    .local v3, "middle_name":Ljava/lang/String;
    const-string v1, ""

    .line 253
    .local v1, "given_name":Ljava/lang/String;
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 254
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ts/bt/BtExe$PbItem;

    iget-object v5, v6, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    .line 255
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->this$0:Lcom/ts/bt/BtPhoneBookActivity;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity;->isBtCountry:Z
    invoke-static {v6}, Lcom/ts/bt/BtPhoneBookActivity;->access$1(Lcom/ts/bt/BtPhoneBookActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 256
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ts/bt/BtExe$PbItem;

    iget-object v4, v6, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    .line 275
    :cond_0
    :goto_1
    iget-object v6, v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v6, v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-object p2

    .line 245
    .end local v0    # "first_name":Ljava/lang/String;
    .end local v1    # "given_name":Ljava/lang/String;
    .end local v3    # "middle_name":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    check-cast v2, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter$ViewHolder;
    goto :goto_0

    .line 258
    .restart local v0    # "first_name":Ljava/lang/String;
    .restart local v1    # "given_name":Ljava/lang/String;
    .restart local v3    # "middle_name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ts/bt/BtExe$PbItem;

    iget-object v0, v6, Lcom/ts/bt/BtExe$PbItem;->first_name:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ts/bt/BtExe$PbItem;

    iget-object v3, v6, Lcom/ts/bt/BtExe$PbItem;->middle_name:Ljava/lang/String;

    .line 260
    iget-object v6, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ts/bt/BtExe$PbItem;

    iget-object v1, v6, Lcom/ts/bt/BtExe$PbItem;->given_name:Ljava/lang/String;

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    goto :goto_1

    .line 265
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 270
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mSelectIdx:I

    .line 226
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/bt/BtExe$PbItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ts/bt/BtExe$PbItem;>;"
    iput-object p1, p0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p0}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method
