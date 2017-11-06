.class public Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;
.super Lcom/txznet/sdk/TXZMusicManager$MusicModel;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/music/TXZMusicTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TXZMusicModel"
.end annotation


# instance fields
.field protected TG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavour()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->TG:Z

    return v0
.end method

.method public setFavour(Z)V
    .locals 0
    .param p1, "favour"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->TG:Z

    .line 421
    return-void
.end method
