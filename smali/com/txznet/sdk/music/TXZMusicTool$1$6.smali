.class Lcom/txznet/sdk/music/TXZMusicTool$1$6;
.super Lcom/txznet/comm/T3/T2$T3;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/music/TXZMusicTool$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/music/TXZMusicTool$1;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/txznet/sdk/music/TXZMusicTool$1$6;->T:Lcom/txznet/sdk/music/TXZMusicTool$1;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T2$T3;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/txznet/comm/T3/T2$T2;)V
    .locals 1
    .param p1, "data"    # Lcom/txznet/comm/T3/T2$T2;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/txznet/comm/T3/T2$T2;->T3()[B

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/sdk/music/TXZMusicTool;->T([B)Z

    .line 197
    return-void
.end method
