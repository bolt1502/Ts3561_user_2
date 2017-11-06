.class public Lcom/txznet/T3/T/TN;
.super Landroid/widget/BaseAdapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/T3/T/TN$T;
    }
.end annotation


# instance fields
.field T:Landroid/content/Context;

.field private T2:Z

.field public T3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/T3/T/TN;->T3:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/T3/T/TN;->T2:Z

    .line 28
    iput-object p1, p0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected T(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/txznet/T3/T/TN;->T2:Z

    if-nez v0, :cond_0

    .line 126
    .end local p1    # "position":I
    :goto_0
    return-void

    .line 124
    .restart local p1    # "position":I
    :cond_0
    iget v0, p0, Lcom/txznet/T3/T/TN;->T3:I

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    .end local p1    # "position":I
    :cond_1
    iput p1, p0, Lcom/txznet/T3/T/TN;->T3:I

    .line 125
    invoke-virtual {p0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/txznet/T3/T/TN;->T2:Z

    .line 50
    invoke-virtual {p0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v1, Lcom/txznet/T3/T/TN$T;

    invoke-direct {v1, p0}, Lcom/txznet/T3/T/TN$T;-><init>(Lcom/txznet/T3/T/TN;)V

    .line 58
    .local v1, "holder":Lcom/txznet/T3/T/TN$T;
    iget-object v2, p0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lcom/txznet/txz/comm/R$layout;->layout_editcommand_item:I

    invoke-virtual {v2, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    sget v2, Lcom/txznet/txz/comm/R$id;->txt_command:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/txznet/T3/T/TN$T;->T:Landroid/widget/TextView;

    .line 60
    sget v2, Lcom/txznet/txz/comm/R$id;->imgbnt_openOperate:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/txznet/T3/T/TN$T;->T3:Landroid/widget/ImageView;

    .line 61
    sget v2, Lcom/txznet/txz/comm/R$id;->layout_operate:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/txznet/T3/T/TN$T;->T2:Landroid/widget/LinearLayout;

    .line 62
    sget v2, Lcom/txznet/txz/comm/R$id;->bnt_edit:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/txznet/T3/T/TN$T;->TN:Landroid/widget/FrameLayout;

    .line 63
    sget v2, Lcom/txznet/txz/comm/R$id;->bnt_delete:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/txznet/T3/T/TN$T;->Te:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v5, v1, Lcom/txznet/T3/T/TN$T;->T3:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/txznet/T3/T/TN;->T2:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T3:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/txznet/T3/T/TN;->T2:Z

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 70
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/txznet/T3/T/TN;->T2:Z

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "command":Ljava/lang/String;
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T2:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/txznet/T3/T/TN;->T3:I

    if-ne v5, p1, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v3, v1, Lcom/txznet/T3/T/TN$T;->T3:Landroid/widget/ImageView;

    iget v2, p0, Lcom/txznet/T3/T/TN;->T3:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/txznet/txz/comm/R$drawable;->txz_item_up:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T:Landroid/widget/TextView;

    new-instance v3, Lcom/txznet/T3/T/TN$1;

    invoke-direct {v3, p0, p1}, Lcom/txznet/T3/T/TN$1;-><init>(Lcom/txznet/T3/T/TN;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->T3:Landroid/widget/ImageView;

    new-instance v3, Lcom/txznet/T3/T/TN$2;

    invoke-direct {v3, p0, p1}, Lcom/txznet/T3/T/TN$2;-><init>(Lcom/txznet/T3/T/TN;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->TN:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/txznet/T3/T/TN$3;

    invoke-direct {v3, p0, p1}, Lcom/txznet/T3/T/TN$3;-><init>(Lcom/txznet/T3/T/TN;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, v1, Lcom/txznet/T3/T/TN$T;->Te:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/txznet/T3/T/TN$4;

    invoke-direct {v3, p0, p1}, Lcom/txznet/T3/T/TN$4;-><init>(Lcom/txznet/T3/T/TN;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object p2

    .line 66
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "holder":Lcom/txznet/T3/T/TN$T;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/T3/T/TN$T;

    .restart local v1    # "holder":Lcom/txznet/T3/T/TN$T;
    goto :goto_0

    :cond_1
    move v2, v4

    .line 68
    goto :goto_1

    .restart local v0    # "command":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/txznet/T3/T/TN;->T:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/txznet/txz/comm/R$drawable;->txz_item_down:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3
.end method
