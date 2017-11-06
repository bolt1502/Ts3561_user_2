.class Lcom/ts/bt/BtExe$4;
.super Ljava/lang/Object;
.source "BtExe.java"

# interfaces
.implements Lcom/autochips/bluetooth/BluetoothPBManager$BluetoothPBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtExe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtExe;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtExe;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtExe$4;->this$0:Lcom/ts/bt/BtExe;

    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPBDownloadOnestep(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2606
    const-string v2, "com.autochips.bluetooth.phonebookdownload.extra.path"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2607
    .local v1, "path":I
    const-string v2, "com.autochips.bluetooth.phonebookdownload.extra.index"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2609
    .local v0, "index":I
    and-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_0

    .line 2610
    const-string v2, "BtExe"

    const-string v3, "not care this intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :goto_0
    return-void

    .line 2614
    :cond_0
    sput v0, Lcom/ts/bt/BtExe;->mSyncNum:I

    .line 2615
    # getter for: Lcom/ts/bt/BtExe;->D:Z
    invoke-static {}, Lcom/ts/bt/BtExe;->access$0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2616
    const-string v2, "BtExe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PBSyncManagerService.ACTION_DOWNLOAD_ONESTEP) iCount =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2616
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/ts/bt/BtExe;->mPbStatus:I

    .line 2621
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v2

    sput-wide v2, Lcom/ts/bt/BtExe;->mPbStartTick:J

    goto :goto_0
.end method

.method public onPBDownloadStateChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2557
    const-string v3, "com.autochips.bluetooth.phonebookdownload.extra.state"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2558
    .local v2, "state":I
    const-string v3, "com.autochips.bluetooth.phonebookdownload.extra.path"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2559
    .local v1, "path":I
    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_0

    .line 2560
    const-string v3, "BtExe"

    const-string v4, "not care this intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :goto_0
    return-void

    .line 2564
    :cond_0
    const-string v3, "BtExe"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download ind state:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2568
    :pswitch_0
    sput v7, Lcom/ts/bt/BtExe;->mPbStatus:I

    .line 2569
    invoke-static {}, Lcom/ts/bt/BtExe;->getTickCount()J

    move-result-wide v3

    sput-wide v3, Lcom/ts/bt/BtExe;->mPbStartTick:J

    .line 2570
    sput v6, Lcom/ts/bt/BtExe;->mSyncNum:I

    .line 2571
    sget-object v3, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2572
    sput-boolean v7, Lcom/ts/bt/BtExe;->isDownLoading:Z

    goto :goto_0

    .line 2582
    :pswitch_1
    const-string v3, "com.autochips.bluetooth.phonebookdownload.extra.index"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/ts/bt/BtExe;->mSyncNum:I

    .line 2583
    sput-boolean v7, Lcom/ts/bt/BtExe;->isDownLoading:Z

    .line 2585
    :try_start_0
    iget-object v3, p0, Lcom/ts/bt/BtExe$4;->this$0:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->addContact()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2590
    :goto_1
    iget-object v3, p0, Lcom/ts/bt/BtExe$4;->this$0:Lcom/ts/bt/BtExe;

    sget-object v4, Lcom/ts/bt/BtExe;->mListPb:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/ts/bt/BtExe;->PbSort(Ljava/util/ArrayList;)V

    .line 2591
    sget v3, Lcom/ts/bt/BtExe;->mPbStatus:I

    if-ne v7, v3, :cond_1

    .line 2592
    const/4 v3, 0x2

    sput v3, Lcom/ts/bt/BtExe;->mPbStatus:I

    .line 2594
    :cond_1
    iget-object v3, p0, Lcom/ts/bt/BtExe$4;->this$0:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->UpdatePbMap()V

    .line 2595
    iget-object v3, p0, Lcom/ts/bt/BtExe$4;->this$0:Lcom/ts/bt/BtExe;

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->SaveDatabase()V

    goto :goto_0

    .line 2586
    :catch_0
    move-exception v0

    .line 2588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
