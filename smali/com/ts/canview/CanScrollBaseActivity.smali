.class public Lcom/ts/canview/CanScrollBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanScrollBaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanScrollBaseActivity"


# instance fields
.field protected mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddFsSetItem(Lcom/ts/canview/CanItemFsSetList$onFsSetClick;I)Lcom/ts/canview/CanItemFsSetList;
    .locals 3
    .param p1, "l"    # Lcom/ts/canview/CanItemFsSetList$onFsSetClick;
    .param p2, "id"    # I

    .prologue
    .line 131
    new-instance v0, Lcom/ts/canview/CanItemFsSetList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanItemFsSetList;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "item":Lcom/ts/canview/CanItemFsSetList;
    invoke-virtual {v0, p2, p1}, Lcom/ts/canview/CanItemFsSetList;->SetIdClickListener(ILcom/ts/canview/CanItemFsSetList$onFsSetClick;)V

    .line 133
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 134
    return-object v0
.end method

.method protected AddFsSetItem(Lcom/ts/canview/CanItemFsSetList$onFsSetClick;II)Lcom/ts/canview/CanItemFsSetList;
    .locals 3
    .param p1, "l"    # Lcom/ts/canview/CanItemFsSetList$onFsSetClick;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/ts/canview/CanItemFsSetList;

    invoke-direct {v0, p0, p2}, Lcom/ts/canview/CanItemFsSetList;-><init>(Landroid/content/Context;I)V

    .line 123
    .local v0, "item":Lcom/ts/canview/CanItemFsSetList;
    invoke-virtual {v0, p3, p1}, Lcom/ts/canview/CanItemFsSetList;->SetIdClickListener(ILcom/ts/canview/CanItemFsSetList$onFsSetClick;)V

    .line 124
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 125
    return-object v0
.end method

.method protected AddIcoItem(Landroid/view/View$OnClickListener;III)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "ico"    # I
    .param p3, "text"    # I
    .param p4, "id"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    invoke-direct {v0, p0, p2, p3}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 90
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0, p1, p4}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 91
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 92
    return-object v0
.end method

.method protected AddIcoItem(Landroid/view/View$OnClickListener;ILjava/lang/String;I)Lcom/ts/canview/CanItemIcoList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "ico"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/ts/canview/CanItemIcoList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/ts/canview/CanItemIcoList;-><init>(Landroid/content/Context;II)V

    .line 98
    .local v0, "item":Lcom/ts/canview/CanItemIcoList;
    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, p1, p4}, Lcom/ts/canview/CanItemIcoList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 100
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 101
    return-object v0
.end method

.method protected AddIcoVal(III)Lcom/ts/canview/CanItemIcoVal;
    .locals 3
    .param p1, "ico"    # I
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/ts/canview/CanItemIcoVal;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/canview/CanItemIcoVal;-><init>(Landroid/content/Context;II)V

    .line 48
    .local v0, "item":Lcom/ts/canview/CanItemIcoVal;
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemIcoVal;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 49
    return-object v0
.end method

.method protected AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    .param p2, "text"    # I
    .param p3, "val"    # [I
    .param p4, "id"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 55
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 56
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method protected AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "callBack"    # Lcom/ts/canview/CanItemPopupList$onPopItemClick;
    .param p2, "text"    # I
    .param p3, "val"    # [Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 63
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 64
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 65
    return-object v0
.end method

.method protected AddProgress(Lcom/ts/canview/CanItemProgressList$onPosChange;II)Lcom/ts/canview/CanItemProgressList;
    .locals 3
    .param p1, "cb"    # Lcom/ts/canview/CanItemProgressList$onPosChange;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p2}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, p3, p1}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 82
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 83
    return-object v0
.end method

.method protected AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 31
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p1, p3}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 32
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 33
    return-object v0
.end method

.method protected AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 39
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p1, p3}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 40
    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetBtn()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 42
    return-object v0
.end method

.method protected AddTextBtn(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p1, p3}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 73
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 74
    return-object v0
.end method

.method protected AddTitleLine(I)Lcom/ts/canview/CanItemBlankTextList;
    .locals 3
    .param p1, "text"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/ts/canview/CanItemBlankTextList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemBlankTextList;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v0, "item":Lcom/ts/canview/CanItemBlankTextList;
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemBlankTextList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 108
    return-object v0
.end method

.method protected AddTitleVal(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemTitleValList;
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "text"    # I
    .param p3, "id"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/ts/canview/CanItemTitleValList;

    invoke-direct {v0, p0, p2}, Lcom/ts/canview/CanItemTitleValList;-><init>(Landroid/content/Context;I)V

    .line 114
    .local v0, "item":Lcom/ts/canview/CanItemTitleValList;
    iget-object v1, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0}, Lcom/ts/canview/CanItemTitleValList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/canview/CanScrollBaseActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/canview/CanScrollBaseActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 26
    return-void
.end method
