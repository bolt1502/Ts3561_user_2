.class Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;
.super Ljava/lang/Object;
.source "HFMusicAndRadioTool.java"

# interfaces
.implements Lcom/txznet/sdk/TXZAsrManager$CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "HFFM#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FM"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
