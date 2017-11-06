.class Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;
.super Landroid/widget/SimpleAdapter;
.source "BtBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectIdx:I

.field final synthetic this$0:Lcom/ts/bt/BtBaseActivity;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtBaseActivity;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, -0x1

    .line 679
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->this$0:Lcom/ts/bt/BtBaseActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 680
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 674
    iput v6, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mSelectIdx:I

    .line 682
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 683
    iput v6, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mSelectIdx:I

    .line 684
    iput-object p3, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    .line 685
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mSelectIdx:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "holder":Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 702
    new-instance v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;-><init>(Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;)V

    .line 703
    .restart local v0    # "holder":Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    iget-object v4, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 704
    sget v5, Lcom/ts/MainUI/R$layout;->bt_log_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 706
    sget v4, Lcom/ts/MainUI/R$id;->btLogNum:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 705
    iput-object v4, v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->phoneTextView:Landroid/widget/TextView;

    .line 708
    sget v4, Lcom/ts/MainUI/R$id;->btLogTime:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 707
    iput-object v4, v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 709
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 714
    :goto_0
    const-string v1, ""

    .line 715
    .local v1, "name":Ljava/lang/String;
    const-string v2, ""

    .line 716
    .local v2, "number":Ljava/lang/String;
    const-string v3, ""

    .line 717
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 718
    iget-object v4, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "item_history_name"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 719
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "item_history_number"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "number":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 720
    .restart local v2    # "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "item_history_time"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "time":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 722
    .restart local v3    # "time":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 723
    iget-object v4, v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :goto_1
    iget-object v4, v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/16 v5, 0x316

    const/16 v6, 0x5b

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    return-object p2

    .line 711
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    check-cast v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;
    goto :goto_0

    .line 725
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "time":Ljava/lang/String;
    :cond_2
    iget-object v4, v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter$ViewHolder;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 692
    iput p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mSelectIdx:I

    .line 693
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    .line 689
    return-void
.end method
