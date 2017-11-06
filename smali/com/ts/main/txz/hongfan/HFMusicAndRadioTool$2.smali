.class Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;
.super Ljava/lang/Object;
.source "HFMusicAndRadioTool.java"

# interfaces
.implements Lcom/txznet/sdk/TXZAsrManager$CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->initLive()V
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
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "CMD_PLAY_CCTV"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV1"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v0, "CMD_PLAY_CCTV1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV1"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "CMD_PLAY_CCTV2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV2"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "CMD_PLAY_CCTV3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV3"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v0, "CMD_PLAY_CCTV5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV5"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v0, "CMD_PLAY_CCTV13"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV13"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV13"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_6
    const-string v0, "CMD_PLAY_CCTV15"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV15"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV15"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_7
    const-string v0, "CMD_PLAY_CCTV22"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV22"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_8
    const-string v0, "CMD_PLAY_CCTV23"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CCTV23"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "CCTV23"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_9
    const-string v0, "CMD_PLAY_FHWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_FHWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u51e4\u51f0\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_a
    const-string v0, "CMD_PLAY_SYXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_SYXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6c88\u9633\u65b0\u95fb"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v0, "CMD_PLAY_SZWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_SZWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6df1\u5733\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_c
    const-string v0, "CMD_PLAY_JSWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 145
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_JSWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6c5f\u82cf\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_d
    const-string v0, "CMD_PLAY_HNWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_HNWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6e56\u5357\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_e
    const-string v0, "CMD_PLAY_DFXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_DFXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e1c\u65b9\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_f
    const-string v0, "CMD_PLAY_BJWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_BJWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5317\u4eac\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_10
    const-string v0, "CMD_PLAY_ZJWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_ZJWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6d59\u6c5f\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_11
    const-string v0, "CMD_PLAY_ZZXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 170
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_ZZXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u90d1\u5dde\u65b0\u95fb"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_12
    const-string v0, "CMD_PLAY_GZXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 175
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_GZXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5e7f\u5dde\u65b0\u95fb"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_13
    const-string v0, "CMD_PLAY_BJXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 180
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_BJXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5317\u4eac\u65b0\u95fb"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_14
    const-string v0, "CMD_PLAY_SHDY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_SHDY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u56db\u6d77\u9493\u9c7c"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_15
    const-string v0, "CMD_PLAY_ZQZX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_ZQZX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bc1\u5238\u8d44\u8baf"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_16
    const-string v0, "CMD_PLAY_DYCJ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 195
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_DYCJ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u7b2c\u4e00\u8d22\u7ecf"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_17
    const-string v0, "CMD_PLAY_CFTX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 200
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_CFTX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8d22\u5bcc\u5929\u4e0b"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_18
    const-string v0, "CMD_PLAY_HBWS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 205
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_HBWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6e56\u5317\u536b\u89c6"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_19
    const-string v0, "CMD_PLAY_QDXW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "hongfan"

    const-string v1, "CMD_PLAY_QDXW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;
    invoke-static {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;->this$0:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    # getter for: Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u9752\u5c9b\u65b0\u95fb"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
