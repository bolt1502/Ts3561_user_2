.class public Lcom/ts/bt/BtLogActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BtCallHistoryActivity"


# instance fields
.field private bt:Lcom/ts/bt/BtExe;

.field public logButton:[Landroid/widget/Button;

.field private mDialNum:Ljava/lang/String;

.field private mHistoryListClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 78
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    .line 221
    new-instance v0, Lcom/ts/bt/BtLogActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtLogActivity$1;-><init>(Lcom/ts/bt/BtLogActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtLogActivity;->mHistoryListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtLogActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/bt/BtLogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity;->mDialNum:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    iget-object v2, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$id;->btn_received:I

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 124
    iget-object v2, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$id;->btn_dialed:I

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v4

    .line 125
    iget-object v2, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$id;->btn_missed:I

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v5

    .line 126
    iget-object v2, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    sget v1, Lcom/ts/MainUI/R$id;->btn_delete_log:I

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v6

    .line 128
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v4

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v5

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v6

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v1, Lcom/ts/MainUI/R$id;->history_listview:I

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 135
    .local v0, "historyListView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->mHistoryListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->checkSelected()V

    .line 139
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtLogActivity;->showActivity(I)V

    .line 239
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->finish()V

    .line 242
    :cond_0
    return-void
.end method

.method public checkSelected()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 183
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    if-ne v1, v4, :cond_0

    .line 184
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 186
    :cond_0
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    if-ne v1, v3, :cond_1

    .line 187
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 189
    :cond_1
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 190
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 192
    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->logButton:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method dial(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/ts/bt/BtLogActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    iget-object v4, v4, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 144
    .restart local v0    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "item_history_number"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ts/bt/BtLogActivity;->mDialNum:Ljava/lang/String;

    .line 145
    const-string v4, "item_history_name"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "name":Ljava/lang/String;
    const-string v4, "item_history_number"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "number":Ljava/lang/String;
    const-string v1, ""

    .line 148
    .local v1, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    move-object v1, v2

    .line 155
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    sget v5, Lcom/ts/MainUI/R$string;->str_bt_dial:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 158
    sget v5, Lcom/ts/MainUI/R$string;->str_bt_ok:I

    .line 159
    new-instance v6, Lcom/ts/bt/BtLogActivity$2;

    invoke-direct {v6, p0}, Lcom/ts/bt/BtLogActivity$2;-><init>(Lcom/ts/bt/BtLogActivity;)V

    .line 158
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 175
    sget v5, Lcom/ts/MainUI/R$string;->str_bt_cancel:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 177
    return-void

    .line 151
    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 196
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->btn_received:I

    if-ne v0, v1, :cond_1

    .line 197
    iput v2, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    .line 198
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->flushFilterList()V

    .line 218
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->checkSelected()V

    .line 219
    return-void

    .line 199
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->btn_dialed:I

    if-ne v0, v1, :cond_2

    .line 200
    iput v6, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    .line 201
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->flushFilterList()V

    goto :goto_0

    .line 202
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->btn_missed:I

    if-ne v0, v1, :cond_3

    .line 203
    iput v8, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    .line 204
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->flushFilterList()V

    goto :goto_0

    .line 205
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->btn_delete_log:I

    if-ne v0, v1, :cond_0

    .line 206
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    if-ne v1, v2, :cond_4

    .line 207
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    const-string v2, "diallog"

    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "incoming"

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    :cond_4
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    if-ne v1, v6, :cond_5

    .line 210
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    const-string v2, "diallog"

    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "outgoing"

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    :cond_5
    iget v1, p0, Lcom/ts/bt/BtLogActivity;->mlistFilter:I

    if-ne v1, v8, :cond_6

    .line 213
    iget-object v1, p0, Lcom/ts/bt/BtLogActivity;->bt:Lcom/ts/bt/BtExe;

    const-string v2, "diallog"

    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "missed"

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/ts/bt/BtLogActivity;->flushFilterList()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_callhistory:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtLogActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/ts/bt/BtLogActivity;->initView()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onDestroy()V

    .line 116
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 105
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 98
    const/4 v0, 0x6

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtLogActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStart()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStop()V

    .line 111
    return-void
.end method
