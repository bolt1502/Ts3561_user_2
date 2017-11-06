.class Lcom/txznet/sdk/music/TXZMusicTool$2$1;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/music/TXZMusicTool$2;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/music/TXZMusicTool$2;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/music/TXZMusicTool$2;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/txznet/sdk/music/TXZMusicTool$2$1;->T:Lcom/txznet/sdk/music/TXZMusicTool$2;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 1
    .param p1, "data"    # Lcom/txznet/comm/T3/T2$T2;

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/txznet/comm/T3/T2$T2;->T2()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    .line 233
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;->onStatusChange()V

    .line 236
    :cond_0
    return-void
.end method
