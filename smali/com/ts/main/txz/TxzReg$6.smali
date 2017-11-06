.class Lcom/ts/main/txz/TxzReg$6;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZMusicManager$MusicTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->initMusicTool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/txz/TxzReg$6;)Lcom/ts/main/txz/TxzReg;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    return-object v0
.end method

.method private toArrayString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ss"    # [Ljava/lang/String;

    .prologue
    .line 656
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 657
    :cond_0
    const/4 v2, 0x0

    .line 664
    :goto_0
    return-object v2

    .line 658
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v0, "s":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 659
    :cond_2
    aget-object v1, p1, v2

    .line 660
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 661
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public exit()V
    .locals 4

    .prologue
    .line 760
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_close_audio:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$7;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$7;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 760
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method public favourMusic()V
    .locals 4

    .prologue
    .line 804
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 805
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$9;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$9;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 804
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 4

    .prologue
    .line 777
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_play_next:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$8;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$8;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 777
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 752
    const/16 v0, 0x5b

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    .line 755
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 735
    sget v0, Lcom/ts/main/common/MainSet;->nPlayer:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 737
    invoke-static {}, Lcom/ts/main/txz/Cyb;->GetInstance()Lcom/ts/main/txz/Cyb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/txz/Cyb;->playResume()V

    .line 745
    :goto_0
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 742
    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto :goto_0
.end method

.method public playFavourMusic()V
    .locals 4

    .prologue
    .line 723
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 724
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$6;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$6;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 723
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 730
    return-void
.end method

.method public playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
    .locals 7
    .param p1, "model"    # Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "bPlay":Z
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model.getTitle()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model.getAlbum()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model.getArtist()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getArtist()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    sget v3, Lcom/ts/main/common/MainSet;->nPlayer:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 679
    invoke-static {}, Lcom/ts/main/txz/Cyb;->GetInstance()Lcom/ts/main/txz/Cyb;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getArtist()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/main/txz/Cyb;->playMusic(Ljava/lang/String;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    iget-object v3, v3, Lcom/ts/main/txz/TxzReg;->map:Ljava/util/Map;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 683
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    iget-object v3, v3, Lcom/ts/main/txz/TxzReg;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 704
    :cond_3
    if-nez v0, :cond_0

    .line 705
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v5, Lcom/ts/MainUI/R$string;->txz_local_not_have_this_song:I

    invoke-virtual {v4, v5}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    const/4 v5, 0x1

    new-instance v6, Lcom/ts/main/txz/TxzReg$6$5;

    invoke-direct {v6, p0}, Lcom/ts/main/txz/TxzReg$6$5;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 705
    invoke-virtual {v3, v4, v5, v6}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 683
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    .local v2, "key":Ljava/lang/String;
    const-string v3, "TxzReg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "playlisname map.filename()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 686
    const-string v5, "TxzReg"

    .line 687
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "playlisname map.data=="

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    iget-object v3, v3, Lcom/ts/main/txz/TxzReg;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v3

    iget-object v3, v3, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    if-eqz v3, :cond_2

    .line 691
    :try_start_0
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v3

    iget-object v5, v3, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 692
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    iget-object v3, v3, Lcom/ts/main/txz/TxzReg;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Lcom/ts/dvdplayer/ITsPlayerService;->playByPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    const/4 v0, 0x1

    goto :goto_1

    .line 694
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public playRandom()V
    .locals 2

    .prologue
    .line 652
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 653
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 644
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    .line 645
    const-string v0, "TxzReg"

    const-string v1, "prev"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/ts/main/txz/Glsx;->GetInstance()Lcom/ts/main/txz/Glsx;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/Glsx;->PlayCmd(I)V

    .line 647
    return-void
.end method

.method public setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-static {v0, p1}, Lcom/ts/main/txz/TxzReg;->access$2(Lcom/ts/main/txz/TxzReg;Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V

    .line 638
    return-void
.end method

.method public switchModeLoopAll()V
    .locals 4

    .prologue
    .line 622
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$4;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$4;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 622
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 629
    const-string v0, "TxzReg"

    const-string v1, "switchModeLoopAll=="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method public switchModeLoopOne()V
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$3;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$3;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 608
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 615
    const-string v0, "TxzReg"

    const-string v1, "switchModeLoopOne=="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method public switchModeRandom()V
    .locals 4

    .prologue
    .line 593
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 594
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$2;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$2;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 593
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 600
    const-string v0, "TxzReg"

    const-string v1, "switchModeRandom=="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public switchSong()V
    .locals 2

    .prologue
    .line 585
    const-string v0, "TxzReg"

    const-string v1, "switchSong"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    .line 587
    invoke-static {}, Lcom/ts/main/txz/Glsx;->GetInstance()Lcom/ts/main/txz/Glsx;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ts/main/txz/Glsx;->PlayCmd(I)V

    .line 588
    return-void
.end method

.method public unfavourMusic()V
    .locals 4

    .prologue
    .line 572
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$6;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v2, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    const/4 v2, 0x1

    new-instance v3, Lcom/ts/main/txz/TxzReg$6$1;

    invoke-direct {v3, p0}, Lcom/ts/main/txz/TxzReg$6$1;-><init>(Lcom/ts/main/txz/TxzReg$6;)V

    .line 572
    invoke-virtual {v0, v1, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 579
    const-string v0, "TxzReg"

    const-string v1, "unfavourMusic=="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method
