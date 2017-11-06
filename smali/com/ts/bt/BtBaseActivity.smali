.class public Lcom/ts/bt/BtBaseActivity;
.super Landroid/app/Activity;
.source "BtBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;,
        Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;,
        Lcom/ts/bt/BtBaseActivity$HistoryObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final FILTER_INCOMING_TYPE:I = 0x2

.field public static final FILTER_MISSED_TYPE:I = 0x4

.field public static final FILTER_OUTGOING_TYPE:I = 0x1

.field public static final ITEM_HISTORY_NAME:Ljava/lang/String; = "item_history_name"

.field public static final ITEM_HISTORY_NUMBER:Ljava/lang/String; = "item_history_number"

.field public static final ITEM_HISTORY_TIME:Ljava/lang/String; = "item_history_time"

.field public static final ITEM_HISTORY_TYPE:Ljava/lang/String; = "item_history_type"

.field private static final TAG:Ljava/lang/String; = "BtBaseActivity"

.field private static activityManager:Landroid/app/ActivityManager;

.field public static baseActivity:Lcom/ts/bt/BtBaseActivity;

.field private static curActivity:Landroid/app/Activity;

.field private static curActivityId:I

.field static curHaveCall:Z

.field public static mBaseStrDialNo:Ljava/lang/String;

.field static mIsHaveCall:Z

.field public static mLastLogTime:Ljava/lang/String;


# instance fields
.field a:[I

.field private bt:Lcom/ts/bt/BtExe;

.field cl:Landroid/view/View$OnClickListener;

.field public mAllHistoryList:Ljava/util/ArrayList;
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

.field private mBtnSubConnect:Landroid/widget/ImageButton;

.field private mBtnSubDial:Landroid/widget/ImageButton;

.field private mBtnSubLog:Landroid/widget/ImageButton;

.field private mBtnSubMusic:Landroid/widget/ImageButton;

.field private mBtnSubPb:Landroid/widget/ImageButton;

.field public mHistoryList:Ljava/util/ArrayList;
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

.field public mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

.field public mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

.field private mHistoryLoaderThread:Landroid/os/HandlerThread;

.field private mHistoryObserver:Lcom/ts/bt/BtBaseActivity$HistoryObserver;

.field public mlistFilter:I

.field private myHandler:Landroid/os/Handler;

.field res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->mBaseStrDialNo:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->baseActivity:Lcom/ts/bt/BtBaseActivity;

    .line 57
    sput-boolean v1, Lcom/ts/bt/BtBaseActivity;->mIsHaveCall:Z

    .line 58
    sput-boolean v1, Lcom/ts/bt/BtBaseActivity;->curHaveCall:Z

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->mLastLogTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->a:[I

    .line 63
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->bt:Lcom/ts/bt/BtExe;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/bt/BtBaseActivity;->mlistFilter:I

    .line 129
    new-instance v0, Lcom/ts/bt/BtBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtBaseActivity$1;-><init>(Lcom/ts/bt/BtBaseActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    .line 759
    new-instance v0, Lcom/ts/bt/BtBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/bt/BtBaseActivity$2;-><init>(Lcom/ts/bt/BtBaseActivity;)V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->myHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ts/bt/BtBaseActivity;)Lcom/ts/bt/BtExe;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->bt:Lcom/ts/bt/BtExe;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/bt/BtBaseActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getRunningActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    .line 489
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    check-cast v0, Landroid/app/ActivityManager;

    .line 490
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 491
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "runningActivity":Ljava/lang/String;
    return-object v1
.end method

.method public static gotoConnectActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    invoke-static {p0}, Lcom/ts/bt/BtBaseActivity;->isCurOtherBT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const-string v1, "BtBaseActivity"

    const-string v2, "gotoConnectActivity FLAG_ACTIVITY_CLEAR_TASK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/ts/bt/BtConnectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 523
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 527
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isCurOtherBT(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    invoke-static {p0}, Lcom/ts/bt/BtBaseActivity;->getRunningActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtBaseActivity;->isCurrentBTConnectedActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isCurrentBTConnectedActivity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strCurActivity"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v0, "BtDialActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const-string v0, "BtCallingActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const-string v0, "BtPhoneBookActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "BtLogActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    const-string v0, "BtMusicActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateBtInfo()V
    .locals 2

    .prologue
    .line 531
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    invoke-static {}, Lcom/ts/bt/BtExe;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/bt/BtBaseActivity;->gotoConnectActivity(Landroid/content/Context;)V

    .line 532
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v0

    sput-boolean v0, Lcom/ts/bt/BtBaseActivity;->curHaveCall:Z

    .line 533
    sget-boolean v0, Lcom/ts/bt/BtBaseActivity;->mIsHaveCall:Z

    sget-boolean v1, Lcom/ts/bt/BtBaseActivity;->curHaveCall:Z

    if-eq v0, v1, :cond_0

    .line 535
    sget-boolean v0, Lcom/ts/bt/BtBaseActivity;->curHaveCall:Z

    sput-boolean v0, Lcom/ts/bt/BtBaseActivity;->mIsHaveCall:Z

    .line 536
    sget-boolean v0, Lcom/ts/bt/BtBaseActivity;->mIsHaveCall:Z

    if-eqz v0, :cond_1

    .line 540
    const-string v0, "BtBaseActivity"

    const-string v1, "mIsHaveCall, Goto BtCallingActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/ts/bt/BtCallMsgbox;->GetInstance()Lcom/ts/bt/BtCallMsgbox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtCallMsgbox;->Show(I)V

    .line 558
    const-string v0, "BtBaseActivity"

    const-string v1, "null == baseActivity, Goto BtCallingActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    sget-boolean v0, Lcom/ts/bt/BtBaseActivity;->curHaveCall:Z

    if-nez v0, :cond_0

    .line 575
    const-string v0, ""

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->mBaseStrDialNo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method SubItemsInit(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "Cur"    # Landroid/app/Activity;
    .param p2, "id"    # I

    .prologue
    .line 345
    sput-object p1, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    .line 346
    sput p2, Lcom/ts/bt/BtBaseActivity;->curActivityId:I

    .line 348
    sget-object v0, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    .line 349
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubConnect:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 348
    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubConnect:Landroid/widget/ImageButton;

    .line 350
    sget-object v0, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubDial:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubDial:Landroid/widget/ImageButton;

    .line 351
    sget-object v0, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubPb:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubPb:Landroid/widget/ImageButton;

    .line 354
    sget-object v0, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubLog:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubLog:Landroid/widget/ImageButton;

    .line 355
    sget-object v0, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    .line 356
    sget v1, Lcom/ts/MainUI/R$id;->btBtnSubMusic:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 355
    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubMusic:Landroid/widget/ImageButton;

    .line 358
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubConnect:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubDial:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubPb:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubLog:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubMusic:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->cl:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    check-cast p1, Lcom/ts/bt/BtBaseActivity;

    .end local p1    # "Cur":Landroid/app/Activity;
    sput-object p1, Lcom/ts/bt/BtBaseActivity;->baseActivity:Lcom/ts/bt/BtBaseActivity;

    .line 368
    invoke-virtual {p0, p2}, Lcom/ts/bt/BtBaseActivity;->updateLeftIco(I)V

    .line 369
    return-void
.end method

.method flushFilterList()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 619
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v1, :cond_6

    .line 620
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 621
    sget-object v1, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v1}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 623
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->saveLastAddr()V

    .line 624
    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 626
    const-string v1, "diallog"

    const-string v3, "addr=?"

    .line 627
    new-array v4, v14, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/ts/bt/BtExe;->getAddr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 626
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 628
    .local v8, "dbCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 631
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 632
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "name":Ljava/lang/String;
    const-string v1, "num"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "num":Ljava/lang/String;
    const-string v1, "time"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 635
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 638
    .local v12, "time":Ljava/lang/String;
    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 637
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 639
    .local v13, "type":Ljava/lang/String;
    const-string v1, "item_history_name"

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "item_history_number"

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "item_history_time"

    invoke-virtual {v9, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v1, "item_history_type"

    invoke-virtual {v9, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget v1, p0, Lcom/ts/bt/BtBaseActivity;->mlistFilter:I

    if-ne v1, v14, :cond_1

    .line 644
    const-string v1, "item_history_type"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    const-string v2, "outgoing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_1
    iget v1, p0, Lcom/ts/bt/BtBaseActivity;->mlistFilter:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 650
    const-string v1, "item_history_type"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    const-string v2, "incoming"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_2
    iget v1, p0, Lcom/ts/bt/BtBaseActivity;->mlistFilter:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 656
    const-string v1, "item_history_type"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    const-string v2, "missed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "num":Ljava/lang/String;
    .end local v12    # "time":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 666
    .end local v8    # "dbCursor":Landroid/database/Cursor;
    :cond_5
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    iget-object v2, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 667
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    invoke-virtual {v1}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;->notifyDataSetChanged()V

    .line 670
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    return-void
.end method

.method public getRunningActivityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    sget-object v2, Lcom/ts/bt/BtBaseActivity;->activityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/ts/bt/BtBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 120
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 121
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ts/bt/BtBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->activityManager:Landroid/app/ActivityManager;

    .line 93
    invoke-virtual {p0}, Lcom/ts/bt/BtBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->res:Landroid/content/res/Resources;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mAllHistoryList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    iget-object v3, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryList:Ljava/util/ArrayList;

    .line 98
    sget v4, Lcom/ts/MainUI/R$layout;->bt_log_item:I

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "item_history_number"

    aput-object v1, v5, v7

    const-string v1, "item_history_time"

    aput-object v1, v5, v2

    .line 99
    new-array v6, v6, [I

    sget v1, Lcom/ts/MainUI/R$id;->btLogNum:I

    aput v1, v6, v7

    .line 100
    sget v1, Lcom/ts/MainUI/R$id;->btLogTime:I

    aput v1, v6, v2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;-><init>(Lcom/ts/bt/BtBaseActivity;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V

    .line 97
    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryListAdapter:Lcom/ts/bt/BtBaseActivity$HistoryListAdapter;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "contactloader_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderThread:Landroid/os/HandlerThread;

    .line 103
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    .line 105
    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;-><init>(Lcom/ts/bt/BtBaseActivity;Landroid/os/Looper;)V

    .line 104
    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    .line 107
    new-instance v0, Lcom/ts/bt/BtBaseActivity$HistoryObserver;

    iget-object v1, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    invoke-direct {v0, p0, v1}, Lcom/ts/bt/BtBaseActivity$HistoryObserver;-><init>(Lcom/ts/bt/BtBaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryObserver:Lcom/ts/bt/BtBaseActivity$HistoryObserver;

    .line 108
    invoke-virtual {p0}, Lcom/ts/bt/BtBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 109
    iget-object v2, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryObserver:Lcom/ts/bt/BtBaseActivity$HistoryObserver;

    .line 108
    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->sendEmptyMessage(I)Z

    .line 111
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity;->myHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ts/bt/BtExe;->addHandler(Landroid/os/Handler;)V

    .line 113
    return-void
.end method

.method public onTimer()V
    .locals 2

    .prologue
    .line 480
    const-string v0, "BtBaseActivity"

    const-string v1, "onTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method resetBaseActivity()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/bt/BtBaseActivity;->baseActivity:Lcom/ts/bt/BtBaseActivity;

    .line 603
    return-void
.end method

.method showActivity(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-virtual {p0, v6, v6}, Lcom/ts/bt/BtBaseActivity;->overridePendingTransition(II)V

    .line 251
    const/4 v2, 0x1

    .line 252
    .local v2, "fgOpen":Z
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    .line 261
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/ts/bt/BtBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 265
    sget v5, Lcom/ts/MainUI/R$string;->bt_connect_first_msg:I

    .line 264
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 268
    const/4 v2, 0x0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    if-nez v4, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/ts/bt/BtBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 285
    .local v1, "context":Landroid/content/Context;
    :goto_1
    const/4 v0, 0x0

    .line 286
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p0, v3}, Lcom/ts/bt/BtBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 329
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/ts/bt/BtLogActivity;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/ts/bt/BtMusicActivity;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 331
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/ts/bt/BtDialActivity;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/ts/bt/BtConnectActivity;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    :cond_2
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 335
    :cond_3
    sget-object v4, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 336
    const-string v4, "finish"

    const-string v5, "123"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ts/bt/BtBaseActivity;->updateLeftIco(I)V

    goto :goto_0

    .line 282
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "context":Landroid/content/Context;
    :cond_5
    sget-object v1, Lcom/ts/bt/BtBaseActivity;->curActivity:Landroid/app/Activity;

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_1

    .line 289
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_1
    const-class v0, Lcom/ts/bt/BtConnectActivity;

    .line 290
    goto :goto_2

    .line 293
    :pswitch_2
    const-class v0, Lcom/ts/bt/BtDialActivity;

    .line 294
    goto :goto_2

    .line 297
    :pswitch_3
    const-class v0, Lcom/ts/bt/BtCallingActivity;

    .line 298
    goto :goto_2

    .line 301
    :pswitch_4
    const-class v0, Lcom/ts/bt/BtPhoneBookActivity;

    .line 302
    goto :goto_2

    .line 305
    :pswitch_5
    const-class v0, Lcom/ts/bt/BtLogActivity;

    .line 306
    goto :goto_2

    .line 309
    :pswitch_6
    const-class v0, Lcom/ts/bt/BtMusicActivity;

    .line 310
    goto :goto_2

    .line 313
    :pswitch_7
    const-class v0, Lcom/ts/bt/BtSearchActivity;

    .line 314
    goto :goto_2

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected testJump()V
    .locals 4

    .prologue
    .line 607
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    invoke-static {}, Lcom/ts/bt/BtExe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 608
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 609
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/ts/bt/BtCallingActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 610
    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    const-string v2, "BtBaseActivity"

    const-string v3, "null == baseActivity, Goto BtCallingActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method updateLeftIco(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 374
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubConnect:Landroid/widget/ImageButton;

    if-nez v5, :cond_0

    .line 460
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 380
    .local v0, "bConnectSel":Z
    const/4 v1, 0x0

    .line 381
    .local v1, "bDialtSel":Z
    const/4 v4, 0x0

    .line 382
    .local v4, "bPbSel":Z
    const/4 v2, 0x0

    .line 383
    .local v2, "bLogSel":Z
    const/4 v3, 0x0

    .line 385
    .local v3, "bMusicSel":Z
    packed-switch p1, :pswitch_data_0

    .line 416
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_1

    .line 418
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubConnect:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_connect_sel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 425
    :goto_2
    if-eqz v1, :cond_2

    .line 427
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubDial:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_dial_sel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 434
    :goto_3
    if-eqz v4, :cond_3

    .line 436
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubPb:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_pb_sel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 443
    :goto_4
    if-eqz v2, :cond_4

    .line 445
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubLog:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_log_sel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 452
    :goto_5
    if-eqz v3, :cond_5

    .line 454
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubMusic:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_music_sel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 388
    :pswitch_1
    const/4 v0, 0x1

    .line 389
    goto :goto_1

    .line 392
    :pswitch_2
    const/4 v1, 0x1

    .line 393
    goto :goto_1

    .line 396
    :pswitch_3
    const/4 v1, 0x1

    .line 397
    goto :goto_1

    .line 401
    :pswitch_4
    const/4 v4, 0x1

    .line 402
    goto :goto_1

    .line 405
    :pswitch_5
    const/4 v2, 0x1

    .line 406
    goto :goto_1

    .line 409
    :pswitch_6
    const/4 v3, 0x1

    .line 410
    goto :goto_1

    .line 422
    :cond_1
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubConnect:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_connect:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 431
    :cond_2
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubDial:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_dial:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 440
    :cond_3
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubPb:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_pb:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_4

    .line 449
    :cond_4
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubLog:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_log:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_5

    .line 458
    :cond_5
    iget-object v5, p0, Lcom/ts/bt/BtBaseActivity;->mBtnSubMusic:Landroid/widget/ImageButton;

    sget v6, Lcom/ts/MainUI/R$drawable;->bt_sub_music:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
