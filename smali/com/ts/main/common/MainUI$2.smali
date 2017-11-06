.class Lcom/ts/main/common/MainUI$2;
.super Landroid/os/storage/StorageEventListener;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/common/MainUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainUI$2;->this$0:Lcom/ts/main/common/MainUI;

    .line 3958
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3962
    const-string v3, "MainUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStorageStateChanged"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const-string v3, "MainUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MyoldState"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/main/common/MainUI$2;->this$0:Lcom/ts/main/common/MainUI;

    iget-object v5, v5, Lcom/ts/main/common/MainUI;->MyoldState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    const-string v3, "mounted"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3965
    const-string v3, "MainUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    invoke-static {v7}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    const-string v3, "cdfs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3970
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->DiscIsInsert()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 3973
    const-string v3, "MainUI"

    const-string v4, "Iop.DiscIsInsert()==1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    const-string v4, "LEMA"

    invoke-virtual {v3, v4}, Lcom/ts/main/common/MainSet;->IsCustom(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3976
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 4005
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ts/main/common/MainUI$2;->this$0:Lcom/ts/main/common/MainUI;

    # getter for: Lcom/ts/main/common/MainUI;->mKeyTouch:Lcom/ts/main/common/KeyTouch;
    invoke-static {v3}, Lcom/ts/main/common/MainUI;->access$3(Lcom/ts/main/common/MainUI;)Lcom/ts/main/common/KeyTouch;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/ts/main/common/KeyTouch;->SearchCtouchFile(I)I

    .line 4006
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v2

    .line 4007
    .local v2, "mCtouchPath":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 4027
    .end local v2    # "mCtouchPath":[Ljava/lang/String;
    :cond_1
    return-void

    .line 3982
    :cond_2
    const-string v3, "MainUI"

    const-string v4, "Iop.DiscIsInsert()==0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3985
    new-instance v3, Lcom/ts/main/common/MainUI$2$1;

    invoke-direct {v3, p0}, Lcom/ts/main/common/MainUI$2$1;-><init>(Lcom/ts/main/common/MainUI$2;)V

    .line 3998
    invoke-virtual {v3}, Lcom/ts/main/common/MainUI$2$1;->start()V

    goto :goto_0

    .line 4012
    .restart local v2    # "mCtouchPath":[Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4013
    const/4 v0, 0x0

    .line 4014
    .local v0, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3561\u4e07\u80fd\u89e6\u6478\u77eb\u6b63.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4015
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4016
    const-string v3, "com.ts.MainUI"

    const-string v4, "com.ts.main.touch.TouchActivity"

    invoke-static {v3, v4}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
