.class public Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;
.super Ljava/lang/Object;
.source "HFMusicAndRadioTool.java"

# interfaces
.implements Lcom/txznet/sdk/TXZMusicManager$MusicTool;


# static fields
.field private static sHFMusicTool:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;


# instance fields
.field private mCommandListener:Lcom/txznet/sdk/TXZAsrManager$CommandListener;

.field private mContext:Landroid/content/Context;

.field private mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;

    invoke-direct {v0, p0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$1;-><init>(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)V

    iput-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mCommandListener:Lcom/txznet/sdk/TXZAsrManager$CommandListener;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Lcom/hongfans/carmedia/MediaAPI;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->sHFMusicTool:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->sHFMusicTool:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    invoke-direct {v0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;-><init>()V

    sput-object v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->sHFMusicTool:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->sHFMusicTool:Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initLive()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-instance v1, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;

    invoke-direct {v1, p0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool$2;-><init>(Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;)V

    invoke-virtual {v0, v1}, Lcom/txznet/sdk/TXZAsrManager;->addCommandListener(Lcom/txznet/sdk/TXZAsrManager$CommandListener;)V

    .line 216
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u7535\u89c6\u53f0"

    aput-object v2, v1, v5

    const-string v2, "CMD_PLAY_CCTV"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV1"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e00\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e1\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u7efc\u5408"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV1"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV2"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e8c\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e2\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u7ecf\u6d4e"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV2"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV3"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e09\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e3\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u7efc\u827a"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV3"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV5"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e94\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e5\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4f53\u80b2"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV5"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV13"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u5341\u4e09\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e13\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u65b0\u95fb"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV13"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV15"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u5341\u4e94\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e15\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u97f3\u4e50"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV15"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV22"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e8c\u5341\u4e8c\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e22\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u98ce\u4e91\u8db3\u7403"

    aput-object v2, v1, v7

    const-string v2, "CMD_PLAY_CCTV22"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u64ad\u653eCCTV23"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u4e8c\u5341\u4e09\u53f0"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e2d\u592e23\u53f0"

    aput-object v2, v1, v6

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u9ad8\u5c14\u592b"

    aput-object v2, v1, v7

    const-string v2, "\u64ad\u653e\u4e2d\u592e\u7f51\u7403"

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "\u64ad\u653e\u4e2d\u592e\u9ad8\u7f51"

    aput-object v3, v1, v2

    .line 225
    const-string v2, "CMD_PLAY_CCTV23"

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u51e4\u51f0\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_FHWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6c88\u9633\u65b0\u95fb"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_SYXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6df1\u5733\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_SZWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6c5f\u82cf\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_JSWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6e56\u5357\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_HNWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u4e1c\u65b9\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u4e0a\u6d77\u536b\u89c6"

    aput-object v2, v1, v5

    const-string v2, "\u64ad\u653e\u4e0a\u6d77\u4e1c\u65b9\u536b\u89c6"

    aput-object v2, v1, v6

    const-string v2, "CMD_PLAY_DFXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u5317\u4eac\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_BJWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6d59\u6c5f\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_ZJWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u90d1\u5dde\u65b0\u95fb"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_ZZXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u5e7f\u5dde\u65b0\u95fb"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_GZXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u5317\u4eac\u65b0\u95fb"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_BJXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u56db\u6d77\u9493\u9c7c"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_SHDY"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u8bc1\u5238\u8d44\u8baf"

    aput-object v2, v1, v4

    const-string v2, "\u64ad\u653e\u8bc1\u5238\u54a8\u8be2"

    aput-object v2, v1, v5

    const-string v2, "CMD_PLAY_ZQZX"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u7b2c\u4e00\u8d22\u7ecf"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_DYCJ"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u8d22\u5bcc\u5929\u4e0b"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_CFTX"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u6e56\u5317\u536b\u89c6"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_HBWS"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u64ad\u653e\u9752\u5c9b\u65b0\u95fb"

    aput-object v2, v1, v4

    const-string v2, "CMD_PLAY_QDXW"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/sdk/TXZAsrManager;->regCommand([Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->exitAPP(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public favourMusic()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hongfans/carmedia/MediaAPI;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaAPI"    # Lcom/hongfans/carmedia/MediaAPI;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 47
    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txznet/sdk/TXZMusicManager;->setMusicTool(Lcom/txznet/sdk/TXZMusicManager$MusicTool;)V

    .line 52
    invoke-direct {p0}, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->initLive()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayNext(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    .line 281
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method public playFavourMusic()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
    .locals 7
    .param p1, "model"    # Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 301
    .local v0, "artist":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->getArtist()[Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "artists":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 304
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 307
    :cond_0
    if-nez v2, :cond_1

    .line 309
    const-string v2, ""

    .line 311
    :cond_1
    if-nez v0, :cond_2

    .line 313
    const-string v0, ""

    .line 315
    :cond_2
    const-string v3, "playMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public playRandom()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPrevious(Landroid/content/Context;)V

    .line 330
    return-void
.end method

.method public setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    .prologue
    .line 337
    return-void
.end method

.method public switchModeLoopAll()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public switchModeLoopOne()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public switchModeRandom()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public switchSong()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public unfavourMusic()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method
