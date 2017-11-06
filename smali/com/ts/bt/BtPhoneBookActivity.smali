.class public Lcom/ts/bt/BtPhoneBookActivity;
.super Lcom/ts/bt/BtBaseActivity;
.source "BtPhoneBookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
    }
.end annotation


# static fields
.field public static final BT_ACTIVITY_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BtPhonebookActivity"


# instance fields
.field private bt:Lcom/ts/bt/BtExe;

.field private isBtCountry:Z

.field private mBtnClear:Landroid/widget/Button;

.field private mBtnSearch:Landroid/widget/Button;

.field private mBtnSync:Landroid/widget/Button;

.field private mDialNum:Ljava/lang/String;

.field mList:Landroid/widget/ListView;

.field private mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

.field private mPbSta:I

.field private mPhonebookListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSyncLayout:Landroid/widget/RelativeLayout;

.field private mSyncNum:I

.field private mSyncTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ts/bt/BtBaseActivity;-><init>()V

    .line 49
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->isBtCountry:Z

    .line 170
    new-instance v0, Lcom/ts/bt/BtPhoneBookActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtPhoneBookActivity$1;-><init>(Lcom/ts/bt/BtPhoneBookActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPhonebookListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtPhoneBookActivity;)Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/bt/BtPhoneBookActivity;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->isBtCountry:Z

    return v0
.end method

.method static synthetic access$2(Lcom/ts/bt/BtPhoneBookActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/bt/BtPhoneBookActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 117
    sget v0, Lcom/ts/MainUI/R$id;->bt_phonebook_dele:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnClear:Landroid/widget/Button;

    .line 118
    sget v0, Lcom/ts/MainUI/R$id;->bt_phonebook_download:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSync:Landroid/widget/Button;

    .line 119
    sget v0, Lcom/ts/MainUI/R$id;->bt_phonebook_search:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSearch:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSync:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSearch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcom/ts/MainUI/R$id;->download_phonebook_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncLayout:Landroid/widget/RelativeLayout;

    .line 125
    sget v0, Lcom/ts/MainUI/R$id;->progressbar_download_phonebook:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 127
    sget v0, Lcom/ts/MainUI/R$id;->tv_download_phonebook_text:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncTextView:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/ts/MainUI/R$id;->phonebook_listview:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mList:Landroid/widget/ListView;

    .line 130
    new-instance v0, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;-><init>(Lcom/ts/bt/BtPhoneBookActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    .line 131
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPhonebookListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->showActivity(I)V

    .line 332
    invoke-virtual {p0}, Lcom/ts/bt/BtPhoneBookActivity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/ts/bt/BtPhoneBookActivity;->updateUI()V

    goto :goto_0
.end method

.method dial(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "list":Lcom/ts/bt/BtExe$PbItem;
    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    # getter for: Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->access$0(Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Lcom/ts/bt/BtExe$PbItem;
    check-cast v0, Lcom/ts/bt/BtExe$PbItem;

    .line 187
    .restart local v0    # "list":Lcom/ts/bt/BtExe$PbItem;
    iget-object v1, v0, Lcom/ts/bt/BtExe$PbItem;->num:Ljava/lang/String;

    iput-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;

    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    sget v2, Lcom/ts/MainUI/R$string;->str_bt_dial:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    iget-object v2, v0, Lcom/ts/bt/BtExe$PbItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    sget v2, Lcom/ts/MainUI/R$string;->str_bt_ok:I

    .line 192
    new-instance v3, Lcom/ts/bt/BtPhoneBookActivity$2;

    invoke-direct {v3, p0}, Lcom/ts/bt/BtPhoneBookActivity$2;-><init>(Lcom/ts/bt/BtPhoneBookActivity;)V

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    sget v2, Lcom/ts/MainUI/R$string;->str_bt_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 206
    return-void
.end method

.method downLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 136
    check-cast v1, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 138
    .local v1, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v1, :cond_1

    .line 139
    const-string v3, "BtPhonebookActivity"

    const-string v4, "get hf dapter fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v1}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 145
    :cond_2
    const-string v3, "BtPhonebookActivity"

    const-string v4, "hf client is not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {}, Lcom/ts/bt/BtExe;->getPBManager()Lcom/autochips/bluetooth/BluetoothPBManager;

    move-result-object v2

    .line 149
    .local v2, "pbManager":Lcom/autochips/bluetooth/BluetoothPBManager;
    if-nez v2, :cond_4

    .line 150
    const-string v3, "BtPhonebookActivity"

    const-string v4, "get pbManager fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    .line 156
    const/4 v4, 0x6

    .line 154
    invoke-virtual {v3, v2, v4}, Lcom/ts/bt/BtExe;->startDownload(Lcom/autochips/bluetooth/BluetoothPBManager;I)Z

    move-result v3

    .line 156
    if-nez v3, :cond_0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/ts/bt/BtPhoneBookActivity;->showProgress(Z)V

    goto :goto_0

    .line 160
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/BluetoothPBManager;->stopDownload(Landroid/bluetooth/BluetoothDevice;)Z

    .line 161
    invoke-virtual {p0, v4}, Lcom/ts/bt/BtPhoneBookActivity;->showProgress(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->bt_phonebook_dele:I

    if-ne v0, v1, :cond_2

    .line 96
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    const-string v2, "phonebook"

    const-string v3, "addr=?"

    .line 98
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 97
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->pbClear()V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->bt_phonebook_download:I

    if-ne v0, v1, :cond_4

    .line 102
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    const-string v2, "phonebook"

    const-string v3, "addr=?"

    .line 104
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 103
    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/bt/BtExe;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->downLoad()V

    goto :goto_0

    .line 107
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->bt_phonebook_search:I

    if-ne v0, v1, :cond_1

    .line 108
    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/ts/bt/BtPhoneBookActivity;->showActivity(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/bt/BtBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_bt_phonebook:I

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/ts/bt/BtPhoneBookActivity;->initView()V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onPause()V

    .line 80
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onResume()V

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->SubItemsInit(Landroid/app/Activity;I)V

    .line 71
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isBtCountry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->isBtCountry:Z

    .line 72
    invoke-virtual {p0}, Lcom/ts/bt/BtPhoneBookActivity;->resetData()V

    .line 73
    invoke-virtual {p0}, Lcom/ts/bt/BtPhoneBookActivity;->updateUI()V

    .line 74
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 75
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStart()V

    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ts/bt/BtBaseActivity;->onStop()V

    .line 86
    return-void
.end method

.method resetData()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncNum:I

    .line 340
    const/16 v0, 0xff

    iput v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPbSta:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mDialNum:Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->showProgress(Z)V

    .line 343
    return-void
.end method

.method showProgress(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSync:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSearch:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSync:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mBtnSearch:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method updateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 346
    iget v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPbSta:I

    sget v1, Lcom/ts/bt/BtExe;->mPbStatus:I

    if-eq v0, v1, :cond_0

    .line 347
    sget v0, Lcom/ts/bt/BtExe;->mPbStatus:I

    if-ne v0, v3, :cond_2

    .line 349
    invoke-virtual {p0, v3}, Lcom/ts/bt/BtPhoneBookActivity;->showProgress(Z)V

    .line 350
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/ts/bt/BtExe;->mSyncNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    sget v0, Lcom/ts/bt/BtExe;->mPbStatus:I

    iput v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPbSta:I

    .line 358
    const-string v0, "BtPhonebookActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/bt/BtExe;->mPbStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v0, "lh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mPBListAdapter:Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;

    sget-object v1, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtPhoneBookActivity$PBListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 364
    :cond_0
    sget v0, Lcom/ts/bt/BtExe;->mPbStatus:I

    if-ne v0, v3, :cond_1

    .line 365
    iget v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncNum:I

    sget v1, Lcom/ts/bt/BtExe;->mSyncNum:I

    if-eq v0, v1, :cond_1

    .line 366
    sget v0, Lcom/ts/bt/BtExe;->mSyncNum:I

    iput v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncNum:I

    .line 367
    iget-object v0, p0, Lcom/ts/bt/BtPhoneBookActivity;->mSyncTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/ts/bt/BtExe;->mSyncNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_1
    return-void

    .line 353
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtPhoneBookActivity;->showProgress(Z)V

    goto :goto_0
.end method
