.class public Lcom/ts/canview/CanScrollList;
.super Ljava/lang/Object;
.source "CanScrollList.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHeigh:I

.field protected mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x55

    iput v0, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x55

    iput v0, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/ts/canview/CanScrollList;->Init(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "h"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x55

    iput v0, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 32
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    .line 33
    iput p3, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "h"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x55

    iput v0, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 38
    iput-object p1, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    .line 39
    if-lez p2, :cond_0

    .line 41
    iput p2, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public AddView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/ts/canview/CanScrollList;->mHeigh:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method public AddView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "h"    # I

    .prologue
    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method public AddView(Landroid/view/View;II)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method public Init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    .line 48
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_lineview:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method

.method public RemoveAllViews()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    return-void
.end method

.method public ShowGone(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 106
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanScrollList;->ShowGone(Z)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowGone(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowHide(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ts/canview/CanScrollList;->ShowHide(Z)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ShowHide(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public addItemCarType(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;
    .locals 6
    .param p1, "text"    # I
    .param p2, "valueIds"    # [I
    .param p3, "id"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 114
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 115
    .local v0, "item":Lcom/ts/canview/CanItemCarType;
    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 116
    return-object v0
.end method

.method public addItemCarType(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;I)Lcom/ts/canview/CanItemCarType;
    .locals 7
    .param p1, "text"    # I
    .param p2, "valueIds"    # [I
    .param p3, "id"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    .param p5, "type"    # I

    .prologue
    .line 120
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;I)V

    .line 121
    .local v0, "item":Lcom/ts/canview/CanItemCarType;
    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 122
    return-object v0
.end method

.method public addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;
    .locals 6
    .param p1, "text"    # I
    .param p2, "valueArr"    # [Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 126
    new-instance v0, Lcom/ts/canview/CanItemCarType;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemCarType;-><init>(Landroid/content/Context;I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 127
    .local v0, "item":Lcom/ts/canview/CanItemCarType;
    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 128
    return-object v0
.end method

.method public addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;
    .locals 2
    .param p1, "text"    # I
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 146
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 147
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p3, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 148
    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 149
    return-object v0
.end method

.method public addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;
    .locals 2
    .param p1, "text"    # I
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 196
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 197
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p3, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 198
    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 199
    return-object v0
.end method

.method public addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;
    .locals 2
    .param p1, "iconId"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 175
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 176
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p4, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 177
    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 178
    return-object v0
.end method

.method public addItemIconList(IIILandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemIcoList;
    .locals 2
    .param p1, "iconId"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "type"    # I

    .prologue
    .line 182
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;III)V

    .line 183
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p4, p3}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 184
    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 185
    return-object v0
.end method

.method public addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;
    .locals 2
    .param p1, "text"    # I
    .param p2, "valueIds"    # [I
    .param p3, "id"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 132
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 133
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 134
    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 135
    return-object v0
.end method

.method public addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;
    .locals 2
    .param p1, "text"    # I
    .param p2, "valueArr"    # [Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;

    .prologue
    .line 139
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 140
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 141
    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 142
    return-object v0
.end method

.method public addItemProgressList(IILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "id"    # I
    .param p3, "callBack"    # Lcom/ts/canview/CanItemProgressList$onPosChange;

    .prologue
    .line 153
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 154
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p3}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 155
    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 156
    return-object v0
.end method

.method public addItemProgressList(Ljava/lang/String;ILcom/ts/canview/CanItemProgressList$onPosChange;)Lcom/ts/canview/CanItemProgressList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "callBack"    # Lcom/ts/canview/CanItemProgressList$onPosChange;

    .prologue
    .line 160
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p2, p3}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 162
    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 163
    return-object v0
.end method

.method public addItemTitleValList(IIZLandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTitleValList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I
    .param p3, "showIcon"    # Z
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 204
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p4, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 205
    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 210
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetValVisibility(I)V

    .line 211
    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 212
    return-object v0

    .line 208
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    goto :goto_0
.end method

.method public addItemTitleValList(IIZLandroid/view/View$OnClickListener;I)Lcom/ts/canview/CanItemTitleValList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I
    .param p3, "showIcon"    # Z
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    iget-object v1, p0, Lcom/ts/canview/CanScrollList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p5}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;II)V

    .line 217
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    invoke-virtual {v0, p4, p2}, Lcom/ts/canview/CanItemTitleValList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 218
    if-eqz p3, :cond_0

    .line 219
    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    .line 223
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTitleValList;->SetValVisibility(I)V

    .line 224
    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 225
    return-object v0

    .line 221
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetIconVisibility(I)V

    goto :goto_0
.end method

.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ts/canview/CanScrollList;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method
