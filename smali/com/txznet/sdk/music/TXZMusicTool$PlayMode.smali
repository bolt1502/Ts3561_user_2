.class public final enum Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/music/TXZMusicTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PLAY_MODE_LOOP_ALL:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

.field public static final enum PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

.field public static final enum PLAY_MODE_RANDOM:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

.field private static final synthetic T:[Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    const-string v1, "PLAY_MODE_LOOP_SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    .line 355
    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    const-string v1, "PLAY_MODE_RANDOM"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_RANDOM:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    .line 359
    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    const-string v1, "PLAY_MODE_LOOP_ALL"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_ALL:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    .line 347
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_RANDOM:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_ALL:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->T:[Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 347
    const-class v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->T:[Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    invoke-virtual {v0}, [Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    return-object v0
.end method
