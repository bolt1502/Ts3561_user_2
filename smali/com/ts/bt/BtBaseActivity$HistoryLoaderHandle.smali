.class Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;
.super Landroid/os/Handler;
.source "BtBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryLoaderHandle"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/ts/bt/BtBaseActivity;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtBaseActivity;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->this$0:Lcom/ts/bt/BtBaseActivity;

    .line 859
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->mCurrentIndex:I

    .line 861
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 865
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 866
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 880
    :goto_0
    return-void

    .line 869
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->updateHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method public updateHistory()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 883
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    if-eqz v2, :cond_3

    .line 884
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->mCurrentIndex:I

    .line 885
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v10, "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-object v2, Lcom/ts/bt/BtExe;->dbHelper:Lcom/ts/bt/BtDatabaseHelper;

    invoke-virtual {v2}, Lcom/ts/bt/BtDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 887
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "diallog"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 888
    const/4 v8, 0x0

    .line 887
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 889
    .local v9, "dbCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 890
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 893
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 896
    .local v13, "name":Ljava/lang/String;
    const-string v2, "num"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 895
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 898
    .local v14, "num":Ljava/lang/String;
    const-string v2, "time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 897
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 900
    .local v15, "time":Ljava/lang/String;
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 899
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 901
    .local v16, "type":Ljava/lang/String;
    const-string v2, "item_history_name"

    invoke-virtual {v11, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v2, "item_history_number"

    invoke-virtual {v11, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v2, "item_history_time"

    invoke-virtual {v11, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string v2, "item_history_type"

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "num":Ljava/lang/String;
    .end local v15    # "time":Ljava/lang/String;
    .end local v16    # "type":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 911
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->this$0:Lcom/ts/bt/BtBaseActivity;

    # getter for: Lcom/ts/bt/BtBaseActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtBaseActivity;->access$1(Lcom/ts/bt/BtBaseActivity;)Landroid/os/Handler;

    move-result-object v2

    .line 912
    const/16 v3, 0x50

    .line 911
    invoke-static {v2, v3, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 913
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->this$0:Lcom/ts/bt/BtBaseActivity;

    # getter for: Lcom/ts/bt/BtBaseActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtBaseActivity;->access$1(Lcom/ts/bt/BtBaseActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "dbCursor":Landroid/database/Cursor;
    .end local v10    # "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v12    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method
